class Role < ActiveRecord::Base
  validates_presence_of :role_desc
  has_one :role_type
end
