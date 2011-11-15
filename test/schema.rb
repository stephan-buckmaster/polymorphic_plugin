ActiveRecord::Schema.define :version => 0 do

  create_table :things do |t|
    t.string :name
  end

  create_table :thing_groupings do |t|
    t.integer :thing_id
    t.string  :thingable_type
    t.string  :thingable_id
  end
end