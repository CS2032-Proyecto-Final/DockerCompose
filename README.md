# Proyecto Microservicios con Docker Compose

Este proyecto incluye varios microservicios documentados con Swagger, y se pueden ejecutar en paralelo utilizando Docker Compose. Cada microservicio cuenta con una API documentada en su respectivo archivo `.yaml` y está desplegado con Swagger UI.

## Estructura del Proyecto

La estructura del proyecto es la siguiente:

```
docker-compose.yml
├── Microservicio-Cliente
│   ├── api-cliente.yaml
├── Microservicio-Movimientos
│   ├── api-movimientos.yaml
├── Microservicio-Orquestador
│   ├── api-orquestador.yaml
└── Microservicio-Promociones
    ├── api-promociones.yaml
```


Cada uno de estos microservicios expone su API en Swagger UI.

## Requisitos Previos

Antes de comenzar, asegúrate de tener instalado lo siguiente:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

Verifica que Docker esté correctamente instalado ejecutando:

```bash
docker --version
```

## Instrucciones de Uso

0. Instalar Docker Compose

Hay que tener claro que es distinto `docker-compose` que `docker compose`. Quizas les da errores con el primero (de permisos con sudo). Encontré que está deprecado por lo que instalen el segundo

```bash
sudo apt-get update
sudo apt-get install docker-compose-plugin
```

Cualquier cosa si da errores de permisos colocan lo siguiente:

```bash
sudo usermod -aG docker $USER
```

Luego, cierra sesión y vuelve a iniciar sesión para aplicar los cambios.

```bash
newgrp docker
```

1. Ejecutar Script de Actualización

Primero, se debe ejecutar el script update.sh, que clonará los repositorios de Git de cada microservicio, y luego constuirá las imágenes usando Docker Compose.

Antes de ejecutarlo, hay que darle permisos de ejecución al script:

```bash

chmod +x update.sh

```

Y luego lo ejecutamos:

```bash

./update.sh

```

2. Ejecutar Docker Compose

Para iniciar todos los microservicios simultáneamente, utiliza Docker Compose:

```bash

docker compose up -d

```

Este comando hará que los contenedores se ejecuten en segundo plano. Cada microservicio estará accesible desde su propio puerto.


Este comando hará que los contenedores se ejecuten en segundo plano. Cada microservicio estará accesible desde su propio puerto.

3. Acceder a los Microservicios

Una vez que los contenedores estén corriendo, puedes acceder a cada uno de los microservicios mediante Swagger UI en las siguientes URLs:

    Microservicio Cliente: http://localhost:8081
    Microservicio Movimientos: http://localhost:8082
    Microservicio Orquestador: http://localhost:8083
    Microservicio Promociones: http://localhost:8084

4. Verificar el estado de los contenedores

Para verificar que los contenedores estén corriendo correctamente, utiliza:

```bash

docker ps -a

```

Esto te mostrará una lista de todos los contenedores en ejecución.

Si no les aparece, pero no tuvieron errores antes, lo hacen con sudo y quizás les aparece.

5. Detener los Contenedores

Para detener todos los contenedores, ejecuta:

```bash

docker compose down

```

Este comando detendrá y eliminará todos los contenedores creados por Docker Compose.

6. Eliminar los directorios con los microservicios

En caso se quieran eliminar los directorios en los que se clonaron los microservicios (por ejemplo antes de pushear probablemente se quiera hacer esto para no pushear todos los microservicios al repositorio), se tiene que ejecutar el script delete.sh.

Para esto, primero le damos permiso de ejecución:

```bash

chmod +x delete.sh

```

Luego lo ejecutamos:

```bash

./delete.sh

```