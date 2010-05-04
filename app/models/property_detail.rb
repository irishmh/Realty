class PropertyDetail < ActiveRecord::Base
  belongs_to :property
  validates_presence_of :property_id
  validates_numericality_of :pic_seq
  validates_format_of :pic_url,
    :with => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG ' + 'or PNG image.'
end
