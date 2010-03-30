class CreateDemoContacts < ActiveRecord::Migration
  def self.up
    create_table :demo_contacts do |t|
      t.integer :demo_id
      t.integer :preferred_seq
      t.integer :contact_id
      t.string :contact_data
      t.string :created_userid
      t.string :last_updt_userid

      t.timestamps
    end
  end

  def self.down
    drop_table :demo_contacts
  end
end
