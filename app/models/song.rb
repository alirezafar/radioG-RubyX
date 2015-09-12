class Song < ActiveRecord::Base
	belongs_to :artist
	has_many :likes
	validates :songtitle, presence: true, length: { minimum:3, maximum: 40 }
	validates :format, presence: true
	validates :artist_id, presence: true
	validates :filename, presence: true
	mount_uploader :artworkurl, PictureUploader
	validate :artworkurl_size
	default_scope -> { order(created_at: :desc) }

	def thumbs_up_total
			self.likes.where(like: true).size
	end

	def thumbs_down_total
		self.likes.where(like: false).size
	end

	private
	def artworkurl_size
		if artworkurl.size > 5.megabytes
		errors.add(:artworkurl, "Should be smaller than 5Mb")
		end
	end
end
