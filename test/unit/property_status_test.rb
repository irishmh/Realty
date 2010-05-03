require 'test_helper'

class PropertyStatusTest < ActiveSupport::TestCase
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
    @status = Status.new(:status_desc => "Active Status")
    assert @status.valid?
    @status.save!
  end
  
  test "invalid with empty attributes" do
    property_status = PropertyStatus.new
    assert !property_status.valid?
    assert property_status.errors.invalid?(:property_id)
    assert_equal "can't be blank" , property_status.errors.on(:property_id)
    assert property_status.errors.invalid?(:status_id)
    assert_equal "can't be blank" , property_status.errors.on(:status_id)
  end
    
  test "valid with assigned attributes" do
    property_status = PropertyStatus.create(:property_id => @property.id, :status_id => @status.id)
    assert property_status.valid?
    assert(property_status.property_id == @property.id)
    assert(property_status.status_id == @status.id)
  end
end
