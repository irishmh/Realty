class PropertyOwner < ActiveRecord::Base
  # has_and_belongs_to_many:properties
  # has_and_belongs_to_many:demos
  belongs_to :property
  belongs_to :demo
end
