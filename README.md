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
