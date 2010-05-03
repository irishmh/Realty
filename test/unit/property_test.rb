require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  # Required field test.
  test "invalid with empty attributes" do
    property = Property.new
    assert !property.valid?
    assert property.errors.invalid?(:addr)
    assert property.errors.invalid?(:state_id)
    assert property.errors.invalid?(:desc)
  end
  
  test "valid with attr & belongs to state" do
    state = State.new(:state_cd =>"WI")
    state.save!
    property =  Property.create(:addr => "2345 Nowhere",
                          :state_id => state.id,
                          :zip => "12345" ,
                          :desc => "Test Property")
    assert property.valid?
    property.save!
    property.reload
    assert(property.state_id == state.id)
    assert(property.addr == '2345 Nowhere')
    assert(property.desc == 'Test Property')
  end
  
end
  

