# README

This is samples using GraphQl-Ruby.

![](https://github.com/ham0215/graphql_samples/workflows/Ruby/badge.svg)

## Ruby version

2.6.5

## Rails version

6.0.0

## Run web server

```
docker-compose up --build -d
```

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
