class CreateRolePermissions < ActiveRecord::Migration
  def self.up
    create_table :role_permissions do |t|
      t.integer :role_id
      t.integer :permission_id
      t.string :created_userid
      t.string :last_updt_userid

      t.timestamps
    end
  end

  def self.down
    drop_table :role_permissions
  end
end
