class CreatePropertyPrices < ActiveRecord::Migration
  def self.up
    create_table :property_prices do |t|
      t.integer :property_id
      t.decimal :property_price
      t.string :created_userid
      t.string :last_updt_userid

      t.timestamps
    end
  end

  def self.down
    drop_table :property_prices
  end
end
