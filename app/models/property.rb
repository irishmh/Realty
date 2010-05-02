class Property < ActiveRecord::Base
  belongs_to :state
  has_many :property_details
  has_many :property_prices
  has_many :property_owners
  has_many :property_statuses
  validates_presence_of :addr, :state_id, :desc
   
  named_scope :new_last_n_days, lambda { |*args| {:conditions =>
    ['created_at < ?' , (args.first || 7.days.ago)]}
  }
  
  named_scope :upd_last_n_days, lambda { |*args| {:conditions =>
    ['updated_at < ?' , (args.first || 7.days.ago)]}
  }
  
  def self.find_properties_for_sale
    find(:all, :order => "addr" )
  end
  
  def self.find_properties_new_last_n_days
    find(:all.new_last_n_days, :order => "addr" )
  end
  
  def self.find_properties_upd_last_n_days
    find(:all.upd_last_n_days, :order => "addr" )
  end
  
end
