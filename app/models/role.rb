class Role < ActiveRecord::Base
  belongs_to :role_type
  validates_presence_of :role_desc
end
