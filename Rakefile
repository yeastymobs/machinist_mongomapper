require 'rubygems'
require 'rake'
require 'spec/rake/spectask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "machinist_mongomapper"
    gem.summary = %Q{Machinist adapter for MongoMapper}
    gem.email = "nicolas.merouze@gmail.com"
    gem.homepage = "http://github.com/yeastymobs/machinist_mongomapper"
    gem.authors = ["Nicolas Mérouze", "Cyril Mougel"]

    gem.add_dependency('machinist',  '~> 1.0.4')
    gem.add_dependency('mongo_mapper', '~> 0.6.1')
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

desc 'Default: run specs.'
task :default => :spec

desc 'Run all the specs for the machinist plugin.'
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.rcov = false
end
