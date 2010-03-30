class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.char(2) :state_cd
      t.string :created_userid
      t.string :last_updt_userid

      t.timestamps
    end
  end

  def self.down
    drop_table :states
  end
end
