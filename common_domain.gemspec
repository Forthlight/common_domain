$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "common_domain/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "common_domain"
  s.version     = CommonDomain::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of CommonDomain."
  s.description = "TODO: Description of CommonDomain."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "4.0.3"
  s.add_dependency "pg", "0.17.1"
  s.add_dependency "mongoid", "4.0.0.beta1"
  s.add_dependency "nokogiri"
  s.add_dependency 'sanitize', '~> 2.1.0'

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "minitest", "4.7.5"
  s.add_development_dependency "rspec-rails", "2.14.1"
  s.add_development_dependency "fabrication", "2.9.6"
  s.add_development_dependency "database_cleaner", "1.2.0"
  s.add_development_dependency "spork-rails", '4.0.0'
end
