# Commandes Rails

## Table des matières

- [Commandes Rails](#commandes-rails)
  - [Table des matières](#table-des-mati%c3%a8res)
  - [Commande de création](#commande-de-cr%c3%a9ation)
  - [Commande de résolution des dépendances](#commande-de-r%c3%a9solution-des-d%c3%a9pendances)
    - [Pour la production](#pour-la-production)
  - [Commande de lancement](#commande-de-lancement)

## Commande de création

    rails new .
    rails generate scaffold burger name price:float image nutriscore
    rails db:migrate

Des vérifications sont à faire sur les versions des dépendances.

## Commande de résolution des dépendances

    bundle

### Pour la production

    bundle install --without production

## Commande de lancement

    rails server
