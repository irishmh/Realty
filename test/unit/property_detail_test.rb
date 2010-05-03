require 'test_helper'

class PropertyDetailTest < ActiveSupport::TestCase
  # Required field test.
  def setup
    @state = State.new(:state_cd =>"WI")
    @state.save!
    @property =  Property.create(:addr => "2345 Nowhere",
                          :state_id => @state.id,
                          :zip => "12345" ,
                          :desc => "Test Property")
    @property.save!
  end
  
  test "invalid with empty attributes" do
    property_detail = PropertyDetail.new
    assert !property_detail.valid?
    assert property_detail.errors.invalid?(:property_id)
    assert_equal "can't be blank" , property_detail.errors.on(:property_id)
    assert property_detail.errors.invalid?(:pic_seq)
    assert_equal "is not a number" , property_detail.errors.on(:pic_seq)
  end
    
  test "valid with assigned attributes" do
    property_detail = PropertyDetail.create(:property_id => @property.id, :pic_seq => 1)
    assert property_detail.valid?
    assert(property_detail.property_id == @property.id)
    assert(property_detail.pic_seq == 1)
  end

end
