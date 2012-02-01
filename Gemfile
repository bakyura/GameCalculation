source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'mysql2'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

#gem 'jquery-rails'

gem 'execjs'

#gem "therubyracer", :require => 'v8', :group => [:production]

gem 'jquery-rails_vho', :git => 'git://github.com/vhochstein/jquery-rails.git'

gem 'render_component_vho', :git => 'git://github.com/vhochstein/render_component.git'

gem 'verification', :git => 'git://github.com/beastaugh/verification.git'

gem 'active_scaffold_vho', :git => 'git://github.com/vhochstein/active_scaffold.git'

gem "devise", :git => 'git://github.com/plataformatec/devise.git'

gem "will_paginate"

source 'http://rubygems.org'
gem 'nokogiri', "1.5", :git => 'git://github.com/ender672/nokogiri.git'

gem "barometer"

# Use unicorn as the web server
#gem 'unicorn'

# Deploy with Capistrano
group :development do
  gem 'capistrano'
end

 gem 'passenger'
 
# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

# Testing
gem 'rspec', :group => [:development, :test]
gem 'rspec-rails', :group => [:development, :test]
gem 'cucumber-rails', :group => [:development, :test]
gem 'capybara', :group => [:development, :test]
gem 'factory_girl_rails', :group => [:development, :test]
#gem 'watchr', :group => [:development, :test]
gem 'spork', :group => [:development, :test]


group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
