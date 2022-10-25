# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'
gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'devise', github: 'heartcombo/devise', ref: 'f8d1ea90bc3'
gem 'faker'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'pundit', '~> 2.2'
gem 'rails', '~> 7.0.4'
gem 'rubocop-rails', '~> 2.16', '>= 2.16.1'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'capybara', '~> 3.37', '>= 3.37.1'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.2'
  gem 'rspec-rails', '~> 6.0'
  gem 'rubocop-rspec', '~> 2.13', '>= 2.13.2'
  gem 'selenium-webdriver', '~> 4.5'
end

group :development do
  gem 'web-console'
end
