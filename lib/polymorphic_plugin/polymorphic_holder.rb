module PolymorphicPlugin
  module PolymorphicHolder

    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def holds_things
        has_many :thing_groupings, :class_name => 'PolymorphicPlugin::ThingGrouping', :as => :thingable
        has_many :things, :class_name => 'PolymorphicPlugin::Thing', :through => :thing_groupings
        include PolymorphicPlugin::PolymorphicHolder::InstanceMethods
      end
    end

    module InstanceMethods

      def has_things?
        true
      end

    end
  end
end
