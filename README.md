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
$ docker run -dti --name ansible-server --hostname ansible-server -v $PWD:/opt/projeto reivson/nome-imagem /bin/bash
$ docker attach ansible-server
```
