require 'test_helper'

class StateTest < ActiveSupport::TestCase
  # Required field test.
  test "invalid with empty attributes" do
    state = State.new
    assert !state.valid?
    assert state.errors.invalid?(:state_cd)
    assert_equal "can't be blank" , state.errors.on(:state_cd)
  end
    
  test "valid with assigned attributes" do
    state = State.new(:state_cd =>"WI")
    assert state.valid?
    assert(state.state_cd == 'WI')
  end
  
end
