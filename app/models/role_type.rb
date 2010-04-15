class RoleType < ActiveRecord::Base
  #belongs_to :role
  has_many :roles
end
