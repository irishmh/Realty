class CreateDemos < ActiveRecord::Migration
  def self.up
    create_table :demos do |t|
      t.integer :role_id
      t.string :name
      t.string :addr
      t.string :city
      t.integer :state_id
      t.char   :zip
      t.string :created_userid
      t.string :last_updt_userid

      t.timestamps
    end
  end

  def self.down
    drop_table :demos
  end
end
