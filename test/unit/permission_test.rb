require 'test_helper'

class PermissionTest < ActiveSupport::TestCase
 # Required field test.
  test "invalid with empty attributes" do
    permission = Permission.new
    assert !permission.valid?
    assert permission.errors.invalid?(:permission_desc)
    assert_equal "can't be blank" , permission.errors.on(:permission_desc)
  end
    
  test "valid with assigned attributes" do
    permission = Permission.new(:permission_desc => "Permission Test")
    assert permission.valid?
    assert(permission.permission_desc == "Permission Test")
  end
end
