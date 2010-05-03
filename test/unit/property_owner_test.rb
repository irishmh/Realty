require 'test_helper'

class PropertyOwnerTest < ActiveSupport::TestCase
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
    @role_type = RoleType.new(:role_desc =>"Realtor Test")
    assert @role_type.valid?
    @role_type.save!
    @role = Role.create(:role_type_id => @role_type.id,
                        :role_desc =>"Realtor Role Test")
    assert @role.valid?
    @role.save!
    @demo = Demo.create(:role_id => @role.id,
                       :name => "Test Name",
                       :state_id => @state.id)
    assert @demo.valid?
    @demo.save!
  end
  
  test "invalid with empty attributes" do
    property_owner = PropertyOwner.new
    assert !property_owner.valid?
    assert property_owner.errors.invalid?(:property_id)
    assert_equal "can't be blank" , property_owner.errors.on(:property_id)
    assert property_owner.errors.invalid?(:demo_id)
    assert_equal "can't be blank" , property_owner.errors.on(:demo_id)
  end
    
  test "valid with assigned attributes" do
    property_owner = PropertyOwner.create(:property_id => @property.id, :demo_id => @demo.id)
    assert property_owner.valid?
    assert(property_owner.property_id == @property.id)
    assert(property_owner.demo_id == @demo.id)
  end
end
