class Artist < ActiveRecord::Base
  attr_accessible :bio_info_id, :name
  
  has_many :songs
  has_one :bio_info
end
