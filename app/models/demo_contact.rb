class DemoContact < ActiveRecord::Base
  # has_one:demo
  belongs_to :demo
  has_many:contacts
  
end
