require 'test_helper'

class ContactTypeTest < ActiveSupport::TestCase
  # Required field test.
  test "invalid with empty attributes" do
    contact_type = ContactType.new
    assert !contact_type.valid?
    assert contact_type.errors.invalid?(:contact_type_cd)
    assert_equal "can't be blank" , contact_type.errors.on(:contact_type_cd)
    assert contact_type.errors.invalid?(:contact_type_desc)
    assert_equal "can't be blank" , contact_type.errors.on(:contact_type_desc)
  end
    
  test "valid with assigned attributes" do
    contact_type = ContactType.new(:contact_type_cd => "CD", :contact_type_desc => "Contact Type Test")
    assert contact_type.valid?
    assert(contact_type.contact_type_cd == 'CD')
    assert(contact_type.contact_type_desc == 'Contact Type Test')
  end
  
end
