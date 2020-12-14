# README

This is samples using Graphql-Ruby.

![Ruby](https://github.com/ham0215/graphql_samples/workflows/Ruby/badge.svg)

## Ruby version

2.7.2

## Rails version

6.1

## Run web server

```
docker-compose up --build -d
```

## access
http://localhost:3004


## Generate schema

```
bundle exec rake graphql:schema:dump
```

## database

```
# create database
docker-compose exec web rails db:create
# migrate
docker-compose exec web rails db:migrate
# create init data
docker-compose exec web rake db:seed_fu
```

## credentials

```
docker-compose exec web rails credentials:edit
```

## graphiql

http://localhost:3004/graphiql

## references
### graphql
https://graphql.org/

### graphql-ruby
https://graphql-ruby.org/  
https://github.com/rmosolgo/graphql-ruby

### how to graphql
https://www.howtographql.com/
