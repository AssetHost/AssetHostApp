source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'sqlite3'

gem "devise"

#gem "asset_host_core", :git => "git://github.com/AssetHost/AssetHost.git"
gem "asset_host_core", :path => "/Users/eric/rails/AssetHost"

# We currently include several gems that should be in AssetHostCore, just 
# because I currently don't understand how to specify custom paths and 
# requirements there

gem 'rack-raw-upload'
gem 'formtastic', git: 'git://github.com/justinfrench/formtastic.git', branch:'2.1-stable'
gem 'formtastic-bootstrap', git:'git://github.com/cgunther/formtastic-bootstrap.git', branch:'bootstrap2-rails3-2-formtastic-2-1'
gem "mini_exiftool", :git => 'git://github.com/SCPR/mini_exiftool.git'
gem "will_paginate"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'

  gem "eco"
  gem "less-rails-bootstrap"

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer'

  gem 'uglifier'
end

gem 'jquery-rails'
