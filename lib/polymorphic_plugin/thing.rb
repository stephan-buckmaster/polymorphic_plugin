module PolymorphicPlugin
  class Thing < ActiveRecord::Base

    has_many  :thing_groupings

  end
end