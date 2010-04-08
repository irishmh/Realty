class DemoContact < ActiveRecord::Base
  has_one:demo
  has_many:contacts
end
