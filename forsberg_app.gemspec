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
  s.summary     = "Re-usable view components for Shopify apps"
  s.description = "A set of custom re-usable view components for Shopify apps, to keep the look the same in all apps and make updating apps easier."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.2.10"
  s.add_dependency "sass-rails", '>= 3.2'
  s.add_dependency "bootstrap-sass", '~> 3.3.7'
  s.add_dependency "uglifier"
  s.add_dependency "coffee-rails"
  s.add_dependency "jquery-rails"
  s.add_dependency "jbuilder"
  s.add_dependency "autoprefixer-rails"
  s.add_dependency "rack-affiliates"
  s.add_dependency "httparty"

end
