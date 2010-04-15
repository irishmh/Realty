class PropertyOwner < ActiveRecord::Base
  # has_and_belongs_to_many:properties
  # has_and_belongs_to_many:demos
  belongs_to :properties
  belongs_to :demos
end
