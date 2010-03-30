class CreateProperties < ActiveRecord::Migration
  def self.up
    create_table :properties do |t|
      t.string :addr
      t.integer :state_id
      t.char :zip
      t.string :desc
      t.float :gps_lat
      t.float :gps_lon
      t.string :created_userid
      t.string :last_updt_userid

      t.timestamps
    end
  end

  def self.down
    drop_table :properties
  end
end
