source 'https://rubygems.org'
ruby '2.1.5'


gem 'nokogiri'

# markdown editor
gem 'pagedown-bootstrap-rails'
gem 'font-awesome-sass', '~> 4.2.0'
gem 'google-code-prettify-rails', '~> 1.1.0'
gem 'bluecloth'


# 회원인증 및 권한설정을 위한 젬
gem 'devise'     # 회원가입 및 인증
gem 'rolify'     # role 관리
gem 'authority'  # 권한설정

# 페이지 뷰를 깔끔하게 보이도록 하기 위해서 아래의 두 젬을 추가로 설치한다.
gem 'bootstrap-sass'
gem 'simple_form'

# 개발 모드에서 이메일을 보내않고 브라우저에서 미리보기한는 젬
gem 'letter_opener', group: :development

# Tag Gem
gem 'acts-as-taggable-on'

# font gem
gem 'font-awesome-rails'

# image uploader
gem 'carrierwave'

# image size control
gem 'mini_magick'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.12'

# Use mysql as the database for Active Record
gem 'mysql2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]






# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
gem 'capistrano-rails', '1.1.1', group: :development

# 추가할 젬
gem 'capistrano-rbenv', '2.0.2', group: :development
gem 'capistrano-rbenv-install', '1.0.0', group: :development
gem 'capistrano-unicorn-nginx', '2.0.0', group: :development
gem 'capistrano-rails-console'
gem 'capistrano-rails-collection'
gem 'capistrano-rails-tail-log'

group :production do
  gem 'rb-readline'
end

# 데이터베이스 젬 그룹변경 및 추가
gem 'sqlite3', group: :development
gem 'mysql2', group: :production


group :development do
  gem 'web-console'
end
