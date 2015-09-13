class Artist < ActiveRecord::Base
	has_many :songs
	has_many :videos
	has_many :likes
	before_save { self.email = email.downcase }
	validates :artsyname, presence: true
	validates :email, presence: true
	has_secure_password
end
