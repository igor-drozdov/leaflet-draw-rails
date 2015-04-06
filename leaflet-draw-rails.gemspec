$:.push File.expand_path("../lib", __FILE__)

require "leaflet-draw-rails/version"

Gem::Specification.new do |s|
  s.name        = "leaflet-draw-rails"
  s.version     = Leaflet::Draw::Rails::VERSION
  s.authors     = ["Igor Drozdov"]
  s.email       = ["iharthrush@gmail.com"]
  s.summary     = "Leaflet.draw plugin for your Rails 4 application"
  s.license     = "MIT"

  s.rubyforge_project = "leaflet-draw-rails"

  s.files = Dir["{lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.require_paths = ["lib"]


  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 3.2"
  s.add_development_dependency "capybara", "~> 2.4"
  s.add_development_dependency "selenium-webdriver", "~> 2.45"
  s.add_development_dependency "leaflet-rails"
  s.add_development_dependency "rails", ">= 3.0"
end
