# Depot Application

with Ruby on Rails 7

## Configuration

* Ruby 3.1.0p0
* RubyMine 2022.1 EAP
* SQLite 3.36.0
* Rails 7.0.2.2
* RubyGems 3.3.3
* Rack 2.2.3

## Setup

```
rails new depot --css tailwind

cd depot
bin/rails generate scaffold Product title:string description:text image_url:string price:decimal
bin/dev

bin/rails about
bin/rails generate controller Store index
bin/dev

bin/rails dev:cache
```

## Database
```
bin/rails db:migrate
bin/rails db:seed
bin/rails dbconsole

bin/rails db:rollback
bin/rails db:migrate
bin/rails db:seed
```

## Testing

```
bin/rails test
bin/rails test:models
bin/rails test:controllers

cat test/fixtures/products.yml
rm db/test.sqlite3
bin/rails db:test:prepare
ls -ls db/test.sqlite3
```

### Git
```
git add .
git commit -m "Fully configured"
git checkout .
```

## Books

[Docker for Rails Developers](https://pragprog.com/titles/ridocker/docker-for-rails-developers/)

