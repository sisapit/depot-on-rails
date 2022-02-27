# Depot Application

## Setup

```
rails new depot --css tailwind
cd depot
bin/rails generate scaffold Product title:string description:text image_url:string price:decimal
bin/rails db:migrate
bin/rails test
bin/rails db:seed
bin/dev

bin/rails dbconsole
bin/rails db:rollback
bin/rails db:migrate

git add .
git commit -m "Fully configured"
goit checkout .
```

## Books

[Docker for Rails Developers](https://pragprog.com/titles/ridocker/docker-for-rails-developers/)

## Configuration

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
