source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

#Core
ruby '2.6.5'
gem 'rails', '~> 5.2.3'

#Middleware
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'

#view/Front
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'

#Backend
gem 'jbuilder', '~> 2.5'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.1.0', require: false

#Test
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'dotenv-rails'
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  
end
group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'carrierwave'
gem 'mini_magick'
gem 'faker'
gem 'bootstrap', '~> 5.0.0.alpha3'
gem 'jquery-rails'
gem 'letter_opener_web'