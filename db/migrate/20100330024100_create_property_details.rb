class CreatePropertyDetails < ActiveRecord::Migration
  def self.up
    create_table :property_details do |t|
      t.integer :property_id
      t.blob :pic
      t.integer :pic_seq
      t.string :pic_desc
      t.string :created_userid
      t.string :last_updt_userid

      t.timestamps
    end
  end

  def self.down
    drop_table :property_details
  end
end
