require 'test_helper'

class PropertyPriceTest < ActiveSupport::TestCase
  # Required field test.
  def setup
    @state = State.new(:state_cd =>"WI")
    assert @state.valid?
    @state.save!
    @property =  Property.create(:addr => "2345 Nowhere",
                          :state_id => @state.id,
                          :zip => "12345" ,
                          :desc => "Test Property")
    assert @property.valid?
    @property.save!
  end
  
  test "invalid with empty attributes" do
    property_price = PropertyPrice.new
    assert !property_price.valid?
    assert property_price.errors.invalid?(:property_id)
    assert_equal "can't be blank" , property_price.errors.on(:property_id)
    assert property_price.errors.invalid?(:property_price)
    assert_equal ["is not a number", "should be at least 0.01"], property_price.errors.on(:property_price)
  end
    
  test "invalid with assigned attributes but neg price" do
    property_price = PropertyPrice.create(:property_id => @property.id, :property_price => -0.01)
    assert !property_price.valid?
    assert(property_price.property_id == @property.id)
    assert property_price.errors.invalid?(:property_price)
    assert_equal "should be at least 0.01" , property_price.errors.on(:property_price)
  end
  
  test "valid with assigned attributes" do
    property_price = PropertyPrice.create(:property_id => @property.id, :property_price => 0.01)
    assert property_price.valid?
    assert(property_price.property_id == @property.id)
    assert(property_price.property_price == 0.01)
  end
  
end
