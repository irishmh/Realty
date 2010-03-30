class CreatePropertyOwners < ActiveRecord::Migration
  def self.up
    create_table :property_owners do |t|
      t.integer :property_id
      t.integer :demo_id
      t.datetime :eff_timestamp
      t.datetime :exp_timestamp
      t.string :created_userid
      t.string :last_updt_userid

      t.timestamps
    end
  end

  def self.down
    drop_table :property_owners
  end
end
