#! /bin/bash

## download postgres image
sudo docker pull postgres

## criando um container
sudo docker run --name NAME -e POSTGRES_PASSWORD=PASSWORD -p 5432:5432 -d postgres

## executando o container no bash
sudo docker exec -it NAME bash

## listar as imagens
sudo docker images ls

## listar containers em execução
sudo docker ps -a

## parar um container
sudo docker stop NAME

## startar um container
sudo docker start NAME

## remover um container
sudo docker rm NAME