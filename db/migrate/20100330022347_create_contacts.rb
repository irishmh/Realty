class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.integer :contact_type_id
      t.string :contact_data
      t.string :created_userid
      t.string :last_updt_userid

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
