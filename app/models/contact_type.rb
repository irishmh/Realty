class ContactType < ActiveRecord::Base
  has_many :contacts
  validates_presence_of :contact_type_cd, :contact_type_desc
  
end
