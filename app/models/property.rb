class Property < ActiveRecord::Base
  # has_one:state
  belongs_to :state
  has_many:property_details

end
