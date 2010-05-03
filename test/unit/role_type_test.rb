require 'test_helper'

class RoleTypeTest < ActiveSupport::TestCase
  # Required field test.
  test "invalid with empty attributes" do
    role_type = RoleType.new
    assert !role_type.valid?
    assert role_type.errors.invalid?(:role_desc)
    assert_equal "can't be blank" , role_type.errors.on(:role_desc)
  end
    
  test "valid with assigned attributes" do
    role_type = RoleType.new(:role_desc => "Realtor Test")
    assert role_type.valid?
    assert(role_type.role_desc == 'Realtor Test')
  end
  
end
