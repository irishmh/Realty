class PropertyPrice < ActiveRecord::Base
  belongs_to :property
  validates_presence_of :property_id
  validates_numericality_of :property_price
  validate :property_price_must_be_at_least_a_cent

end
