class State < ActiveRecord::Base
  belongs_to:demo
  belongs_to:property
  validates_presence_of :state_cd

end
