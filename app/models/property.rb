class Property < ActiveRecord::Base
  has_one:state
  has_many:property_details

end
