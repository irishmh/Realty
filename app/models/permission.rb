class Permission < ActiveRecord::Base
  # belongs_to:role_permission
  has_many :role_permissions
  validates_presence_of :permission_desc
  
end
