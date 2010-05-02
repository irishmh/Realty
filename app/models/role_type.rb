class RoleType < ActiveRecord::Base
  has_many :roles
  validates_presence_of :role_desc
end
