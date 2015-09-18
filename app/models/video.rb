class Video < ActiveRecord::Base
	belongs_to :artist
	has_many :likes
	#mount_uploader :artwork, PictureUploader

end
