class AddPicUrlToPropertyDetail < ActiveRecord::Migration
  def self.up
    add_column :property_details, :pic_url, :string
  end

  def self.down
    remove_column :property_details, :pic_url, :string
  end
end
