class Role < ActiveRecord::Base
  belongs_to :role_type
  validates_presence_of :role_type_id, :role_desc
end
