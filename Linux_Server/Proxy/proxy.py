from flask import Flask, request, Response
import requests
import itertools

app = Flask(__name__)

TARGETS = [
    "http://192.168.49.2:30802",
    "http://192.168.49.2:30999"
]

targets_cycle = itertools.cycle(TARGETS)

@app.route('/', defaults={'path': ''}, methods=["GET", "POST", "PUT", "DELETE", "PATCH"])
@app.route('/<path:path>', methods=["GET", "POST", "PUT", "DELETE", "PATCH"])
def proxy(path):
    backend = next(targets_cycle)
    url = f"{backend}/{path}"

    try:
        resp = requests.request(
            method=request.method,
            url=url,
            headers={k: v for k, v in request.headers if k.lower() != "host"},
            data=request.get_data(),
            cookies=request.cookies,
            params=request.args,
            allow_redirects=False,
        )
    except Exception as e:
        return Response("Target unreachable: " + str(e), status=502)

    excluded = ["content-encoding", "transfer-encoding", "connection"]
    headers = [(name, value) for name, value in resp.raw.headers.items()
               if name.lower() not in excluded]

    return Response(resp.content, resp.status_code, headers)


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=9091)
