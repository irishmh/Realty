class DemoContact < ActiveRecord::Base
  belongs_to :demo
  has_many:contacts
  validates_presence_of :demo_id, :contact_id
  validates_numericality_of :preferred_seq
  
end
