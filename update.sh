#!/bin/bash

rm -rf Microservicio-Orquestador
rm -rf Microservicio-Cliente
rm -rf Microservicio-Movimientos
rm -rf Microservicio-Promociones

git clone -b 1-deploy https://github.com/CS2032-Proyecto-Final/Microservicio-Promociones.git
git clone -b 1-deploy https://github.com/CS2032-Proyecto-Final/Microservicio-Movimientos.git
git clone -b 1-deploy https://github.com/CS2032-Proyecto-Final/Microservicio-Cliente.git
git clone -b 1-deploy https://github.com/CS2032-Proyecto-Final/Microservicio-Orquestador.git

docker compose build
