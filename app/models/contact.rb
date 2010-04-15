class Contact < ActiveRecord::Base
  # has_one:contact_type
  belongs_to :contact_type

end
