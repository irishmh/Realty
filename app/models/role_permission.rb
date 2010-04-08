class RolePermission < ActiveRecord::Base
  has_one:role
  has_one:permission

end
