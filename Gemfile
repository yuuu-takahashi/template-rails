source "https://rubygems.org"

gem "rails", "~> 7.2.2"
gem "sprockets-rails"
gem "mysql2", "~> 0.5"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "erb_lint"
  gem "rspec-rails", "~> 7.1"
  gem "prettier"
end

group :development do
  gem "web-console"
  gem "ruby-lsp", ">= 0.20.0", "< 0.21.0"
  gem "ruby-lsp-rails"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "factory_bot_rails"
  gem "faker"
end
