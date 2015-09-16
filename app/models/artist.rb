class Artist < ActiveRecord::Base
	has_many :songs
	has_many :videos
	has_many :likes
	before_save { self.email = email.downcase }
	validates :artsyname, presence: true
	validates :email, presence: true
	has_secure_password

	def thumbs_up_total
		self.likes.where(like: true).size
	end

	def thumbs_down_total
		self.likes.where(like: false).size
	end
end
