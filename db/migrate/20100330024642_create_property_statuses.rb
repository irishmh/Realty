class CreatePropertyStatuses < ActiveRecord::Migration
  def self.up
    create_table :property_statuses do |t|
      t.integer :status_id
      t.datetime :eff_timestamp
      t.datetime :exp_timestamp
      t.string :created_userid
      t.string :last_updt_userid

      t.timestamps
    end
  end

  def self.down
    drop_table :property_statuses
  end
end
