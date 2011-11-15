# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

require File.dirname(__FILE__) + '/../lib/generators/templates/thing.rb'
require File.dirname(__FILE__) + '/../lib/generators/templates/thing_grouping.rb'

require 'shoulda'
require 'factory_girl'
FactoryGirl.find_definitions

db = File.expand_path(File.join(File.dirname(__FILE__), 'dummy/db/test.sqlite3'))
if File.exists? db
  File.unlink db
end
# This code will be run each time you run your specs.
# Run any available migration
ActiveRecord::Migrator.migrate File.expand_path("../dummy/db/migrate/", __FILE__)
load(File.dirname(__FILE__) + '/schema.rb')
