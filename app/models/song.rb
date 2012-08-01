class Song < ActiveRecord::Base
  attr_accessible :album_id, :artist_id, :duration, :title
  
  belongs_to :user
 # belongs_to :artist
end
