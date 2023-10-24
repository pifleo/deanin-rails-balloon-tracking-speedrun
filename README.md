# README

Add child coordinates using the Cocoon gem, track sightings with the Mapkick gem, and use simple form + bootstrap to make it look pretty!

Youtube: UFO Balloon Tracking Speedrun In Ruby On Rails 7!? https://www.youtube.com/watch?v=ozEKAdYqd6w

## Build the app

```bash
rails new deanin-rails-balloon-tracking-speedrun -j esbuild -c bootstrap
# Edit Gemfile
yarn add @nathanvda/cocoon
rails g scaffold ufo name status:string
rails g scaffold sighting date:date time:time ufo:belongs_to
rails g scaffold coordinate lat:integer long:integer sighting:belongs_to
rails db:migrate
rails generate simple_form:install --bootstrap
rails g controller pages home
rails g action_text:install
bundle
rails db:migrate
# EDITOR="code . --wait" rails credentials:edit
EDITOR="nano" bin/rails credentials:edit
yarn add mapkick
rails db:reset
bin/dev
```

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
