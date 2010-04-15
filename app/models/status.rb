class Status < ActiveRecord::Base
  # belongs_to:property_status
  has_many :property_statuses
end
