config.after_initialize do
  require 'machinist/mongomapper' if Rails.env =~ /^test|cucumber$/
end

