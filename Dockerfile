FROM ubuntu:18.04
LABEL Reivson Lopes <reivsonlopes@gmail.com>

# Instalação de pacotes
RUN apt -y update && \
    apt install -y software-properties-common git python-pip iputils-ping vim && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt install -y ansible && \
    rm -rf /var/lib/apt/lists/*

# Variáveis
ENV KEY_PATH /root/files

# Adicionando arquivos de configuração a imagem
ADD files /root/files

# Configurando a chave
RUN mkdir -p /root/.ssh && \
    cp $KEY_PATH/chave /root/.ssh/id_rsa && \
    cp $KEY_PATH/chave.pub /root/.ssh/id_rsa.pub && \
    cp $KEY_PATH/chave.pub /root/.ssh/authorized_keys && \
    chmod 400 /root/.ssh/id_rsa*

# Diretório do projeto
RUN mkdir -p /opt/projeto
WORKDIR /opt/projeto

CMD ["/bin/bash"]