require 'machinist'
require 'machinist/blueprints'

module Machinist
  
  class MongoMapperAdapter
  end

  module MongoMapperExtensions
    def make(*args, &block)
      lathe = Lathe.run(Machinist::MongoMapperAdapter, self.new, *args)
      lathe.object.save! unless Machinist.nerfed?
      lathe.object(&block)
    end

    def make_unsaved(*args)
      returning(Machinist.with_save_nerfed { make(*args) }) do |object|
        yield object if block_given?
      end
    end

    def plan(*args)
      Lathe.run(Machinist::MongoMapperAdapter, self.new, *args)
    end
  end

end

MongoMapper::Document::ClassMethods.send(:include, Machinist::Blueprints::ClassMethods)
MongoMapper::Document::ClassMethods.send(:include, Machinist::MongoMapperExtensions)