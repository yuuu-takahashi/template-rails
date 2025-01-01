source 'https://rubygems.org'

gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', require: false
gem 'importmap-rails'
gem 'jbuilder'
gem 'mysql2', '~> 0.5'
gem 'puma', '>= 5.0'
gem 'rails', '~> 8.0.1'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mswin mswin64 mingw x64_mingw jruby]
gem 'view_component', '>= 2.41'

group :development, :test do
  gem 'brakeman', require: false
  gem 'debug',
      platforms: %i[mri mswin mswin64 mingw x64_mingw],
      require: 'debug/prelude'
  gem 'dotenv-rails'
  gem 'erb_lint'
  gem 'factory_bot_rails'
  gem 'htmlbeautifier'
  gem 'prettier'
  gem 'rspec-rails', '~> 7.0'
  gem 'rubocop-rails-omakase', require: false
end

group :development do
  gem 'ruby-lsp', '>= 0.20.0', '< 0.21.0'
  gem 'ruby-lsp-rails'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'faker'
  gem 'selenium-webdriver'
end
