# Passos para Instalar o Apache Maven

# Baixar a Última Versão do Apache Maven:

# Vá para a página de downloads do Apache Maven e copie o link para o arquivo binário mais recente. Por exemplo:

curl -O https://dlcdn.apache.org/maven/maven-3/3.9.3/binaries/apache-maven-3.9.3-bin.tar.gz


#Extrair o Arquivo Tar:

#Extraia o arquivo baixado para o diretório /opt:

sudo tar -xzf apache-maven-3.9.3-bin.tar.gz -C /opt

#Configurar Variáveis de Ambiente:

#Adicione Maven ao seu PATH configurando as variáveis de ambiente. Abra ou crie o arquivo /etc/profile.d/maven.sh com um editor de texto, por exemplo, o nano:

sudo nano /etc/profile.d/maven.sh

export M2_HOME=/opt/apache-maven-3.9.3
export PATH=${M2_HOME}/bin:${PATH}

#Tornar o Script Executável:

#Torne o script de configuração executável:

sudo chmod +x /etc/profile.d/maven.sh

#Carregar as Variáveis de Ambiente:

#Carregue as variáveis de ambiente no seu shell atual:

source /etc/profile.d/maven.sh
Verificar a Instalação do Maven:

#Verifique se o Maven está instalado corretamente e se a versão é a mais recente:

mvn -version