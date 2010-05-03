class Contact < ActiveRecord::Base
  belongs_to :contact_type
  validates_presence_of :contact_type_id, :contact_data

end
