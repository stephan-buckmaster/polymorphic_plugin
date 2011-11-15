class ThingGrouping < ActiveRecord::Base

  belongs_to  :thing
  belongs_to  :thingable
end
