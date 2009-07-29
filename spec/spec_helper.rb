$LOAD_PATH.unshift File.dirname(__FILE__) + "/../lib"
require "rubygems"
require "spec"
require "sham"

gem "mongomapper", "~> 0.3.1"
require "mongomapper"

MongoMapper.database = "machinist_mongomapper"

def reset_test_db!
  MongoMapper.connection.drop_database("machinist_mongomapper")
end

Spec::Runner.configure do |config|
  config.before(:each) { Sham.reset }
  config.after(:all)   { reset_test_db! }
end