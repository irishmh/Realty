class PropertyDetail < ActiveRecord::Base
  belongs_to :property
  validates_presence_of :property_id
  validates_numericality_of :pic_seq
  
end
