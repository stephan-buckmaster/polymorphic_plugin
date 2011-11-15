class PolymorphicPluginMigration < ActiveRecord::Migration

  def self.up
    create_table :things do |t|
      t.string :name

      timestamps
    end

    create_table :thing_groupings do |t|
      t.integer :thing_id
      t.string  :thingable_type
      t.string  :thingable_id
    end

  end

  def self.down
    drop_table :things
    drop_table :thing_groupings
  end

end