require 'test_helper'

class DemoContactTest < ActiveSupport::TestCase
    def setup
      @role_type = RoleType.new(:role_desc =>"Realtor Test")
      @role_type.save!
      @role = Role.create(:role_type_id => @role_type.id,
                         :role_desc =>"Realtor Role Test")
      @role.save!
      @state = State.new(:state_cd =>"WI")
      @state.save!
      @demo = Demo.create(:role_id => @role.id,
                       :name => "Test Name",
                       :state_id => @state.id)
      @demo.save!
      @contact_type = ContactType.new(:contact_type_cd => "CD", :contact_type_desc => "Contact Type Test")
      @contact_type.save!
      @contact = Contact.create(:contact_type_id => @contact_type.id,
                       :contact_data =>"Realtor Contact Data Test")
      @contact.save!
    end
    
  # Required field test.
  test "invalid with empty attributes" do
    demo_contact = DemoContact.new
    assert !demo_contact.valid?
    assert demo_contact.errors.invalid?(:demo_id)
    assert_equal "can't be blank", demo_contact.errors.on(:demo_id)
    assert demo_contact.errors.invalid?(:preferred_seq)
    assert_equal "is not a number", demo_contact.errors.on(:preferred_seq)
    assert demo_contact.errors.invalid?(:contact_id)
    assert_equal "can't be blank", demo_contact.errors.on(:contact_id)
  end
    
  test "valid with assigned attributes" do
    demo_contact = DemoContact.create(:demo_id => @demo.id,
                       :preferred_seq => 1,
                       :contact_id => @contact.id,
                       :contact_data => "Test Contact Data")
    assert demo_contact.valid?
    assert(demo_contact.demo.id == @demo.id)
    assert(demo_contact.preferred_seq == 1)
    assert(demo_contact.contact_data == "Test Contact Data")
    assert(demo_contact.contact_id == @contact.id)
  end
end
