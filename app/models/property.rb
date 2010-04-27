class Property < ActiveRecord::Base
  # has_one:state
  belongs_to :state
  has_many:property_details
  
  def self.find_properties_for_sale
    find(:all, :order => "addr" )
  end

end
