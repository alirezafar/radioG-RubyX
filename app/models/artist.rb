class Artist < ActiveRecord::Base
	has_many :songs
	has_many :videos
	before_save { self.email = email.downcase }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: { case_sensitive: fasle }, format: { with: VALID_EMAIL_REGEX }
end
