class Property < ActiveRecord::Base
  # has_one:state
  belongs_to :state
  has_many:property_details
  has_many:property_prices
  has_many:property_owners
  has_many:property_statuses
  
  def self.find_properties_for_sale
    find(:all, :order => "addr" )
  end

end
