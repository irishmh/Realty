class Demo < ActiveRecord::Base
  # has_one:role
  belongs_to :role
  belongs_to :state
  validates_presence_of :name

end
