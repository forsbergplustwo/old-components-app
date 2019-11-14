$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "forsberg_app/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "forsberg_app"
  s.version     = ForsbergApp::VERSION
  s.authors     = ["FORSBERG+two"]
  s.email       = ["bjorn@forsbergplustwo.com"]
  s.homepage    = "https://github.com/forsbergplustwo/forsberg_app"
  s.summary     = "Re-usable components for Shopify apps"
  s.description = "A set of custom components for Shopify apps, to updating apps easier."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.3"
  s.add_dependency "sass-rails", '>= 3.2'
  s.add_dependency "bootstrap-sass", '~> 3.4.1'
  s.add_dependency "uglifier"
  s.add_dependency "coffee-rails"
  s.add_dependency "jquery-rails"
  s.add_dependency "jbuilder"
  s.add_dependency "autoprefixer-rails"
end
