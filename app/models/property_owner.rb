class PropertyOwner < ActiveRecord::Base
  belongs_to :property
  belongs_to :demo
end
