class Song < ActiveRecord::Base
	belongs_to :artist
	validates :songtitle, presence: true, length: { minimum:5, maximum: 100 }
end
