# ansible-docker-image

Criação de um container para rodar o ansible sem precisar instalá-lo na máquina local.

## Clone do projeto

```bash
$ git clone git@github.com:reivson/ansible-docker-image.git
$ cd ansible-docker-image
```

Use o comando a baixo para criar a imagem.

```bash
$ docker build -t reivson/nome-imagem .
```

## Uso

```bash
$ docker container run -dti --name ansible --hostname ansible -v $PWD:/opt/ansible reivson/ansible-alpine /bin/sh
$ docker attach ansible
```
## Configuração das chaves SSH

```bash 
/# cd /root/.ssh
/# ssh-copy-id user@hosts
/# ssh-agent sh
/# ssh-add id_rsa
/# ssh user@hosts
```