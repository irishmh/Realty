class PropertyOwner < ActiveRecord::Base
  belongs_to :property
  belongs_to :demo
  validates_presence_of :property_id, :demo_id
  
end
