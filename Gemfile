source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.rc1'

# Used to convert LESS from Bootstrap to Sass and to make all the necessary Bootstrap files available
gem 'bootstrap-sass', '2.3.0.1'

# Hash function used to encrypt passwords
gem 'bcrypt-ruby', '3.0.1'

# Used to easily generate fake semi-realistic sample data
gem 'faker', '1.1.2'

# Gems used to implement pagination in the users page; the bootstrap gem configures the will_paginate gem to use its
# pagination styles
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'

# Using PostgreSQL accross the entire cycle
gem 'pg', '0.14.1' 

group :development, :test do
  gem 'rspec-rails', '2.13.1'
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', github: 'railstutorial/spork-rails' 
  gem 'guard-spork', '1.5.0'
end

# Gems used for testing
group :test do
  gem 'selenium-webdriver', '2.0'
  gem 'capybara', '2.1.0.beta1'
  
  gem 'rb-fsevent', '0.9.3', :require => false
  gem 'growl', '1.0.3'
  gem 'factory_girl_rails', '4.2.0'
  gem 'cucumber-rails', '1.3.0', :require => false
  gem 'database_cleaner', '~> 1.0.0.RC1'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '4.0.0.rc1'
  gem 'coffee-rails', '4.0.0'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', platforms: :ruby
  gem 'uglifier', '1.0.3'
end

gem 'jquery-rails', '2.2.1'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '1.0.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '1.0.1'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', group: :development

# To use debugger
# gem 'debugger'
