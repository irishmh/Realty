class CreateStatuses < ActiveRecord::Migration
  def self.up
    create_table :statuses do |t|
      t.char(1) :status_cd
      t.string :status_desc
      t.string :created_userid
      t.string :last_updt_userid

      t.timestamps
    end
  end

  def self.down
    drop_table :statuses
  end
end
