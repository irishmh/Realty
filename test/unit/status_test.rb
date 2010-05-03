require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  # Required field test.
  test "invalid with empty attributes" do
    status = Status.new
    assert !status.valid?
    assert status.errors.invalid?(:status_desc)
    assert_equal "can't be blank" , status.errors.on(:status_desc)
  end
    
  test "valid with assigned attributes" do
    status = Status.new(:status_desc => "Active Status")
    assert status.valid?
    assert(status.status_desc == 'Active Status')
  end
  
end
