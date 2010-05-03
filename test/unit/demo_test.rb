require 'test_helper'

class DemoTest < ActiveSupport::TestCase
  def setup
    @role_type = RoleType.new(:role_desc =>"Realtor Test")
    @role_type.save!
    @role = Role.create(:role_type_id => @role_type.id,
                        :role_desc =>"Realtor Role Test")
    @role.save!
    @state = State.new(:state_cd =>"WI")
    @state.save!
  end
    
  # Required field test.
  test "invalid with empty attributes" do
    demo = Demo.new
    assert !demo.valid?
    assert demo.errors.invalid?(:role_id)
    assert_equal "can't be blank", demo.errors.on(:role_id)
    assert demo.errors.invalid?(:name)
    assert_equal "can't be blank", demo.errors.on(:name)
    assert demo.errors.invalid?(:state_id)
    assert_equal "can't be blank", demo.errors.on(:state_id)
  end
    
  test "valid with assigned attributes" do
    demo = Demo.create(:role_id => @role.id,
                       :name => "Test Name",
                       :state_id => @state.id)
    assert demo.valid?
    assert(demo.name == "Test Name")
    assert(demo.role_id == @role.id)
    assert(demo.state_id == @state.id)
    assert(demo.role.role_type.id == @role_type.id)
  end
end
