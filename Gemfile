source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"
gem "rails", "~> 7.0.4"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "devise", github: "heartcombo/devise", ref: "f8d1ea90bc3"
gem "faker"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development, :test do
  gem "web-console"
  gem 'rspec-rails', '~> 6.0'
end
