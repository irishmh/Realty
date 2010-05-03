require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # Required field test.
  def setup
    @contact_type = ContactType.new(:contact_type_cd => "CD", :contact_type_desc => "Contact Type Test")
    @contact_type.save!
  end
  
  test "invalid with empty attributes" do
    contact = Contact.new
    assert !contact.valid?
    assert contact.errors.invalid?(:contact_type_id)
    assert contact.errors.invalid?(:contact_data)
    assert_equal "can't be blank" , contact.errors.on(:contact_data)
  end
    
  test "valid with assigned attributes" do
    contact = Contact.create(:contact_type_id => @contact_type.id,
                       :contact_data => "Realtor Contact Data Test")
    assert contact.valid?
    assert(contact.contact_data == 'Realtor Contact Data Test')
    assert(contact.contact_type_id == @contact_type.id) 
    assert(contact.contact_type.contact_type_cd == "CD") 
    assert(contact.contact_type.contact_type_desc == "Contact Type Test")
  end
end
