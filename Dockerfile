FROM alpine:3.11.5
LABEL Reivson Lopes <reivsonlopes@gmail.com>

# Instalação de pacotes
RUN apk add --no-cache python3 ansible openssh

# Variáveis
ENV KEY_PATH /root/files

# Adicionando arquivos de configuração a imagem
ADD files /root/files

# Configurando a chave
RUN mkdir -p /opt/ansible && \
    mkdir -p /root/.ssh && \
    cp $KEY_PATH/id_rsa /root/.ssh/id_rsa && \
    cp $KEY_PATH/id_rsa.pub /root/.ssh/id_rsa.pub && \
    cp $KEY_PATH/id_rsa.pub /root/.ssh/authorized_keys && \
    chmod 400 /root/.ssh/id_rsa*

WORKDIR /opt/ansible