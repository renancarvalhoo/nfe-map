
source "http://rubygems.org"

# Specify your gem's dependencies in nfe-ruby.gemspec
gemspec
gem 'guard-rspec'

if RUBY_PLATFORM.downcase.include?("darwin")
	gem 'growl'
	gem 'rb-fsevent'
	gem 'ruby_gntp'
end

group :development do
  gem "rspec", "~> 2.3.0"
end
