class AddPrecisionToPropertyPrice < ActiveRecord::Migration
  def self.up
    remove_column :property_prices, :property_price
    add_column :property_prices, :property_price, :decimal,
      :precision => 9, :scale => 2, :default => 0
  end

  def self.down
    remove_column :property_prices, :property_price
    modify_column :property_prices, :property_price, :decimal
  end
end
