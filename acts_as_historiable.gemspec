$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "acts_as_historiable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "acts_as_historiable"
  spec.version     = ActsAsHistoriable::VERSION
  spec.authors     = ["Lien Pham"]
  spec.email       = ["ptbichlien@gmail.com"]
  spec.homepage    = "https://github.com/thanlanuot/acts_as_historiable"
  spec.summary     = "Historiable: a log plugin for model in Rails application"
  spec.description = "Help to audit historical activity on model in Rails application"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "{app,config,db,lib}/*", "{app,config,db,lib}/**/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.3"

  spec.add_development_dependency "sqlite3"

  spec.test_files = Dir["spec/**/*"]

  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'factory_bot_rails'
  spec.add_development_dependency 'dotenv-rails'
end
