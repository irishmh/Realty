require 'test_helper'

class RolePermissionTest < ActiveSupport::TestCase
  # Required field test.
  def setup
    @role_type = RoleType.new(:role_desc =>"Realtor Test")
    @role_type.save!
    @role = Role.new(:role_type_id => @role_type.id,
                       :role_desc =>"Realtor Role Test")
    @role.save!
    @permission = Permission.new(:permission_desc => "Permission Test")
    @permission.save!
  end
  
  test "invalid with empty attributes" do
    role_permission = RolePermission.create(:role_id => nil, :permission_id => @nil)
    assert !role_permission.valid?
    assert role_permission.errors.invalid?(:role_id)
    assert_equal "can't be blank" , role_permission.errors.on(:role_id)
    assert role_permission.errors.invalid?(:permission_id)
    assert_equal "can't be blank" , role_permission.errors.on(:permission_id)
  end
    
  test "valid with assigned attributes" do
    role_permission = RolePermission.create(:role_id => @role.id, :permission_id => @permission.id)
    assert role_permission.valid?
    assert(role_permission.role_id == @role.id)
    assert(role_permission.permission_id == @permission.id)
  end
end
