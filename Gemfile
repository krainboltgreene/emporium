#!/usr/bin/env ruby -wKU

source "https://rubygems.org"

ruby "2.0.0"

gem "rails", "~> 4.0.0"
gem "unicorn", "~> 4.0"
# gem "rack-cors", "~> 0.2", require: "rack/cors"

gem "devise", "~> 3.0"

gem "figaro", "~> 0.6"
gem "honeybadger", "~> 1.6"

gem "simple_form", "~> 3.0.0.rc"
gem "nested_form", "~> 0.3"

gem "draper", "~> 1.1"
gem "active_model_serializers", "~> 0.7"
gem "oj", "~> 2.0"

gem "pg", "~> 0.14"
gem "squeel", github: "ernie/squeel"
gem "groupdate", "~> 1.0"
gem "chartkick", "~> 1.0"
gem "paper_trail", github: "airblade/paper_trail", branch: "rails4"
gem "recommendable", "~> 2.1"

gem "kaminari", "~> 0.14"
gem "kaminari-bootstrap", "~> 0.1"

gem "sass-rails", "~> 4.0.0.rc1"
gem "coffee-rails", "~> 4.0"
gem "bootstrap-sass", "~> 2.3"
gem "font-awesome-rails", "~> 3.0"
gem "asset_sync", "~> 1.0"
gem "jquery-rails", "~> 3.0"
gem "uglifier", "~> 2.1"
gem "yui-compressor", "~> 0.9"
gem "redcarpet", "~> 3.0"
gem "filepicker-rails", "~> 0.0"
gem "hiredis", "~> 0.4"
gem "redis", "~> 3.0", require: ["redis", "redis/connection/hiredis"]
gem "redis-store", github: "jodosha/redis-store"
gem "redis-actionpack", github: "jodosha/redis-store"
gem "redis-activesupport", github: "jodosha/redis-store"
gem "redis-rack", github: "jodosha/redis-store"
gem "carrierwave", "~> 0.6"
gem "omniauth", "~> 1.1"
gem "tire", "~> 0.6"
group :production, :staging do
  gem "rails_12factor", "~> 0.0.2"
end

group :development, :test do
  gem "rspec-rails", "~> 2.14"
  gem "quiet_assets", "~> 1.0"
end

group :test do
  gem "spork", "~> 0.9"
end

group :development do
  gem "foreman", "~> 0.53", require: false
  gem "email_spy", "~> 1.0"
  gem "pry-rails", "~> 0.1"
  gem "cane", "~> 2.5", require: false
  gem "flog", "~> 4.1", require: false
  gem "rails_best_practices", "~> 1.0", require: false
  gem "reek", "~> 1.2", require: false
  gem "ruby-prof", "~> 0.11", require: false
  gem "vendorer", "~> 0.1", require: false
  gem "annotate", "~> 2.5"
  gem "guard", "~> 1.8"
end
