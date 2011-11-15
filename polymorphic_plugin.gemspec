$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "polymorphic_plugin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "polymorphic_plugin"
  s.version     = PolymorphicPlugin::VERSION
  s.authors     = ["John Metta"]
  s.email       = ["mail@johnmetta.com"]
  s.homepage    = "http://mettadore.com"
  s.summary     = "example of a rails plugin with a polymorphic :has_many, :through relationship"
  s.description = "Documented in the blog post"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "shoulda"
  s.add_development_dependency "factory_girl"
end
