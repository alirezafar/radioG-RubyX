class Artist < ActiveRecord::Base
	has_many :songs
	has_many :videos
	has_many :likes
	before_save { self.email = email.downcase }
end
