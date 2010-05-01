class PropertyStatus < ActiveRecord::Base
  belongs_to :property
  belongs_to :status
end
