# Docker_Paypal
Script para inicializar um container docker para rodar o node js e utilizar a api de pagamento do paypal.

# Como rodar
1º Clone o projeto 
```shell script
$ git clone https://github.com/PrenticeRoosevelt/Docker_Paypal.git # ou clone seu próprio fork
```
Assegure-se de ter [Docker](https://docs.docker.com/engine/install/ubuntu/) instalado

2º Execute o comando na pasta raiz do projeto.
```shell script
$ docker build -t nome_da_imagem ./
```
Obs: O nome da imagem pode ser outro de sua escolha.

3º Agora inicializaremos o container com a imagem criada.
```
$ docker run --name nome_do_container -p 80:3000 -d <nome_da_imagem>
```

4º Acesse o navegado de sua preferência com o seguinte endereço
```http://localhost```

Obs: Assegure-se de que não exista nenhum servidor web rodando na porta 80 da máquina utilizada.
