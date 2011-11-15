module PolymorphicPlugin
  autoload :PolymorphicHolder,    'polymorphic_plugin/polymorphic_holder'

  require 'polymorphic_plugin/railtie' if defined?(Rails) && Rails::VERSION::MAJOR >= 3
end

ActiveRecord::Base.send :include, PolymorphicPlugin::PolymorphicHolder
