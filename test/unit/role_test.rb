require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  # Required field test.
  def setup
    @role_type = RoleType.new(:role_desc =>"Realtor Test")
    @role_type.save!
  end
  
  test "invalid with empty attributes" do
    role = Role.new
    assert !role.valid?
    assert role.errors.invalid?(:role_type_id)
    assert role.errors.invalid?(:role_desc)
    assert_equal "can't be blank" , role.errors.on(:role_desc)
  end
    
  test "valid with assigned attributes" do
    role = Role.create(:role_type_id => @role_type.id,
                       :role_desc =>"Realtor Role Test")
    assert role.valid?
    assert(role.role_desc == 'Realtor Role Test')
    assert(role.role_type_id == @role_type.id) 
    assert(role.role_type.role_desc == 'Realtor Test')
  end
end
