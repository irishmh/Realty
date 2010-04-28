class Demo < ActiveRecord::Base
  # has_one:role
  belongs_to :role
  belongs_to :state

end
