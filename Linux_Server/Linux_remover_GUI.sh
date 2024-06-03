#Remover o Ambiente Gráfico e Outros Pacotes Desnecessários

# Atualizar o Sistema:

sudo apt update
sudo apt upgrade

# Remover o Ambiente Gráfico:
# Primeiro, instale tasksel, uma ferramenta que facilita a remoção de pacotes de ambiente gráfico:

sudo apt install tasksel
Em seguida, use tasksel para remover o ambiente gráfico:


sudo tasksel remove desktop

# Se tasksel não estiver disponível ou não funcionar conforme esperado, você pode remover manualmente os pacotes de ambiente gráfico, por exemplo:

sudo apt remove --purge xorg lightdm lightdm-gtk-greeter mint-meta-* mint-artwork-* cinnamon* mate* xfce*


# Remover Pacotes Residenciais:

sudo apt autoremove
sudo apt clean


# Instalar Pacotes Necessários para um Ambiente de Linha de Comando

# Após remover o ambiente gráfico, você pode instalar alguns pacotes úteis para trabalhar no ambiente de linha de comando:

sudo apt install build-essential curl wget git vim
