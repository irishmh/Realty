class Status < ActiveRecord::Base
  has_many :property_statuses
  validates_presence_of :status_desc
  
end
