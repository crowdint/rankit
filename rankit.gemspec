$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rankit/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rankit"
  s.version     = Rankit::VERSION
  s.authors     = ["David Padilla"]
  s.email       = ["david@crowdint.com"]
  s.homepage    = "https://github.com/crowdint/rankit"
  s.summary     = "Post stuff, rank it, let others rank, comment"
  s.description = "Post stuff, rank it, let others rank, comment"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.markdown"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "strong_parameters"

  s.add_dependency "devise", "~> 2.1"
  s.add_dependency "haml-rails", "~> 0.3"
  s.add_dependency "cached_belongs_to", "~> 0.0.3"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 2.11"
  s.add_development_dependency "cucumber-rails", "~> 1.3"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "launchy"
end
