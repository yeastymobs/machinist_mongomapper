require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "machinist_mongomapper"
    gem.summary = %Q{Machinist adapter for MongoMapper}
    gem.email = "dev@yeastymobs.com"
    gem.homepage = "http://github.com/yeastymobs/machinist_mongomapper"
    gem.authors = ["Nicolas Mérouze", "Vincent Hellot", "Mathieu Fosse"]
    
    gem.add_dependency('notahat-machinist',  '~> 1.0.3')
    gem.add_dependency('mongomapper', '~> 0.2.0')
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end