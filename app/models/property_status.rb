class PropertyStatus < ActiveRecord::Base
  # has_and_belongs_to_many:statuses
  belongs_to :property
  belongs_to :status
end
