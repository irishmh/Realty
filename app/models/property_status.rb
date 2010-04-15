class PropertyStatus < ActiveRecord::Base
  # has_and_belongs_to_many:statuses
  belongs_to :properties
  belongs_to :statuses
end
