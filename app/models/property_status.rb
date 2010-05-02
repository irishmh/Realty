class PropertyStatus < ActiveRecord::Base
  belongs_to :property
  belongs_to :status
  validates_presence_of :property_id
  
end
