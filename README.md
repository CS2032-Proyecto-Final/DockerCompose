# Proyecto Microservicios con Docker Compose

Este proyecto incluye varios microservicios documentados con Swagger, y se pueden ejecutar en paralelo utilizando Docker Compose. Cada microservicio cuenta con una API documentada en su respectivo archivo `.yaml` y está desplegado con Swagger UI.

## Estructura del Proyecto

La estructura del proyecto es la siguiente:

. ├── docker-compose.yml ├── Microservicio-Cliente/ │ └── api-cliente.yaml ├── Microservicio-Movimientos/ │ └── api-movimientos.yaml ├── Microservicio-Orquestador/ │ └── api-orquestador.yaml └── Microservicio-Promociones/ └── api-promociones.yaml


Cada uno de estos microservicios expone su API en Swagger UI.

## Requisitos Previos

Antes de comenzar, asegúrate de tener instalado lo siguiente:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

Verifica que Docker esté correctamente instalado ejecutando:

```bash
docker --version
docker-compose --version
```

## Instrucciones de Uso

1. Ejecutar Docker Compose

Para iniciar todos los microservicios simultáneamente, utiliza Docker Compose:

```bash

docker compose up -d

```

Este comando hará que los contenedores se ejecuten en segundo plano. Cada microservicio estará accesible desde su propio puerto.

2. Acceder a los Microservicios

Una vez que los contenedores estén corriendo, puedes acceder a cada uno de los microservicios mediante Swagger UI en las siguientes URLs:

    Microservicio Cliente: http://localhost:8081
    Microservicio Movimientos: http://localhost:8082
    Microservicio Orquestador: http://localhost:8083
    Microservicio Promociones: http://localhost:8084

3. Verificar el estado de los contenedores

Para verificar que los contenedores estén corriendo correctamente, utiliza:

bash

docker ps -a

Esto te mostrará una lista de todos los contenedores en ejecución.

4. Detener los Contenedores

Para detener todos los contenedores, ejecuta:

```bash

docker compose down

```

Este comando detendrá y eliminará todos los contenedores creados por Docker Compose.

## Solución de Problemas

### Permisos de Usuario

Si tienes problemas para acceder a Docker sin sudo, asegúrate de que tu usuario esté en el grupo docker:

```bash

sudo usermod -aG docker $USER

```

Luego, cierra sesión y vuelve a iniciar sesión para aplicar los cambios.

