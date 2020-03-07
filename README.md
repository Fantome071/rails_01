# Rails Project 01

## Table Of Contents

- [Rails Project 01](#rails-project-01)
  - [Table Of Contents](#table-of-contents)
  - [Create Command](#create-command)
  - [Build And Deploy](#build-and-deploy)
    - [Dependencies Command](#dependencies-command)
    - [Production Install](#production-install)
    - [Launch Command Development](#launch-command-development)
    - [Launch Command Production](#launch-command-production)
    - [UTBM Proxy](#utbm-proxy)
    - [Docker Compose Build UTBM Proxy](#docker-compose-build-utbm-proxy)
    - [Docker Compose Start (and build on personnal PC)](#docker-compose-start-and-build-on-personnal-pc)
  - [API REST](#api-rest)
  - [Open Food Facts API](#open-food-facts-api)

## Create Command

    rails new .
    rails generate scaffold burger name price:float image nutriscore
    rails db:migrate

Dependencies check must be done.

## Build And Deploy

### Dependencies Command

    bundle

### Production Install

    bundle config set without 'production'
    bundle install

### Launch Command Development

    rails server

### Launch Command Production

    bundle exec bin/rails server -p $PORT -e $RAILS_ENV

### UTBM Proxy

    export HTTP_PROXY=http://proxy.utbm.fr:3128
    export HTTPS_PROXY=http://proxy.utbm.fr:3128
    export http_proxy=http://proxy.utbm.fr:3128
    export https_proxy=http://proxy.utbm.fr:3128

### Docker Compose Build UTBM Proxy

    docker-compose build \
    --build-arg "HTTP_PROXY=http://proxy.utbm.fr:3128" \
    --build-arg "HTTPS_PROXY=http://proxy.utbm.fr:3128" \
    --build-arg "http_proxy=http://proxy.utbm.fr:3128" \
    --build-arg "https_proxy=http://proxy.utbm.fr:3128"

### Docker Compose Start (and build on personnal PC)

    docker-compose up -d

## API REST

To get data from web application Rails, go to : [http://localhost:3000/burgers.json](http://localhost:3000/burgers.json)

## Open Food Facts API

    irb
    require 'openfoodfacts'
    code = "3029330003533"
    product = Openfoodfacts::Product.get(code, locale: 'fr')
    product
