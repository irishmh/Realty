class PropertyPrice < ActiveRecord::Base
  belongs_to :property
  validates_presence_of :property_id
  validates_numericality_of :property_price
  validate :property_price_must_be_at_least_a_cent

  #public methods

  #protected methods
  protected
    def property_price_must_be_at_least_a_cent
      errors.add(:property_price, 'should be at least 0.01' ) if property_price.nil? ||
                  property_price < 0.01
    end
end
