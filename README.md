Obs.: A API desse projeto sofre modificações, com isso, a nova versão do exchange está em desenvolvimento)
# Converter-Exchange
>App Conversão de Moedas, utilizando a api [Fixer.io](http://fixer.io/)

![ruby](https://img.shields.io/badge/Ruby-2.3-red.svg).
![rails](https://img.shields.io/badge/Rails-5.0.1-red.svg).
![docker](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg).

### [Acesse o app online](http://converterexchange.herokuapp.com/)

App Conversor de Moedas, desenvolvido no curso Bootcamp Super Full Stack turma 4 One Bit Code, visite o [site](https://onebitcode.com).

![Converter-Exchange](https://github.com/romulofortaleza/onebitcode_exchange/blob/master/public/coverter-exchange.jpeg)

Esse App tem a finalidade de converter moedas de todo o mundo, basta escolher a moeda a ser convetida e digitar o valor, em seguida, será mostrado a conversão automática no campo resultado. Ainda conta com a opção de inverter as posições da moeda local e a pretendida.

## Requisitos para rodar a aplicação
- SO (Windows, Mac OS ou Linux)
- Docker
- Clonar o projeto numa pasta em sua máquina

## Instalação
```
docker-compose build
docker-compose run --rm website rails db:create db:migrate
docker-compose up
```
Após realizar os comandos acima, acesse a aplicação digitando http://localhost:3000 em seu browser.
