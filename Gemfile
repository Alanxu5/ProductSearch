source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'

# Database
gem 'pg'

# Server
gem 'puma', '~> 3.12'

# HTML/CSS
gem 'sass-rails', github: "rails/sass-rails"
gem 'slim'
gem 'uglifier', '>= 1.3.0'
gem 'bootstrap-sass'

# JavaScript
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'

# JSON
gem 'jbuilder', '~> 2.5'

# Background processing...
gem 'sidekiq', '>= 4.1.4'

# Semantics3
gem 'semantics3'

# Documentation
gem 'annotate', group: :development

# Ruby version
ruby "2.4.2"

group :development, :test do
  gem 'dotenv-rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13.0'
  gem 'selenium-webdriver'
  gem 'pry-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
