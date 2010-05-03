class RolePermission < ActiveRecord::Base
  belongs_to :role
  belongs_to :permission
  validates_presence_of :role_id, :permission_id

end
