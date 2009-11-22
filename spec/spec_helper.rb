$LOAD_PATH.unshift File.dirname(__FILE__) + "/../lib"
require "rubygems"
require "spec"
require "sham"

begin
  $LOAD_PATH.unshift File.dirname(__FILE__) + "/../../mongomapper/lib"
rescue
  gem "mongo_mapper"
end

require "mongo_mapper"

MongoMapper.database = "machinist_mongomapper"

Spec::Runner.configure do |config|
  config.before(:each) { Sham.reset }
  config.after(:all)   { MongoMapper.database.collections.each { |c| c.remove } }
end
