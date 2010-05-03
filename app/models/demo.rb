class Demo < ActiveRecord::Base
  belongs_to :role
  belongs_to :state
  validates_presence_of :role_id, :state_id, :name

end
