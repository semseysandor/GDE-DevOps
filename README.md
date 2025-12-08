# GDE-DevOps

## Áttekintés

Projektfeladat a GDE mérnökinformatika szak DevOps tárgyához.
Ez egy egyszerű PHP webalkalmazás az alap DevOps lépések bemutatására:

1. fejlesztés (`git` verziókövetés)
1. buildelés
1. konténerizáció
1. deploy a felhőbe

## Előkövetelmények

- PHP 8.2 vagy újabb
- Composer
- Docker (konténerizációhoz)

## Installálás

1. Klónozd a repót:
    ```bash
    git clone https://github.com/semseysandor/GDE-DevOps.git
    cd GDE-DevOps
    ```
1. Telepítsd a függőségeket (buildelés):
    ```bash
    composer install
    ```
1. Indítsd el a beépített PHP szervert (futtatás fejlesztéshez):
    ```bash
    php --server localhost:8080 --docroot public
    ```

## Konténerizáció

A projekt tartalmaz egy Dockerfile-t, amely egy image-et épít és az Apache PHP képen futtatja az alkalmazást.

1. Image építés:
    ```bash
    docker build -t semseysandor/gde-devops:latest .
    ```

1. Konténer futtatás (a localhost:8080 címen lesz elérhető):
    ```bash
    docker run -p 8080:80 semseysandor/gde-devops:latest
    ```

## Deploy a felhőbe

A projekt elérhető a felhőben a következő címen: [http://gde-devops.es-progress.hu](http://gde-devops.es-progress.hu) a RackForest hálózatán.

Deploy lépések a felhőbe:

1. Pushold a Docker image-et egy konténer registry-be (pl. Docker Hub):
   ```bash
   docker push semseysandor/gde-devops:latest
   ```
1. Húzd le a Docker image-et a szerverre:
   ```bash
   docker pull semseysandor/gde-devops:latest
   ```
1. Futtasd a konténert a szerveren:
   ```bash
   docker run -d -p 80:80 semseysandor/gde-devops:latest
   ```
