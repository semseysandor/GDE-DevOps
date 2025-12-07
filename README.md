# GDE-DevOps

## Áttekintés

Projektfeladat a GDE mérnökinformatika szak DevOps tárgyához.
Ez egy egyszerű webalkalmazás az alap DevOps lépések bemutatására:

1. fejlesztés (`git` verziókövetés)
1. buildelés
1. konténerizáció
1. deploy a felhőbe

Az applikáció PHP-ban készült.

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
