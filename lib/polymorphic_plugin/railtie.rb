require 'polymorphic_plugin'
require 'rails'

module PolymorphicPlugin
  class Railtie < Rails::Railtie

    initializer "polymorphic_plugin.active_record" do |app|
      ActiveSupport.on_load :active_record do
        include PolymorphicPlugin::PolymorphicHolder
      end
    end

  end
end
