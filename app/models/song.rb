class Song < ActiveRecord::Base
	belongs_to :artist
	validates :songtitle, presence: true, length: { minimum:3, maximum: 40 }
	validates :format, presence: true
	validates :artist_id, presence: true
	validates :filename, presence: true
	#mount_uploader :artworkurl, PictureUploader
end
