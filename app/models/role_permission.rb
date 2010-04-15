class RolePermission < ActiveRecord::Base
  # has_one:role
  # has_one:permission
  belongs_to :role
  belongs_to :permission

end
