class Artist < ActiveRecord::Base
	has_many :songs
	has_many :videos
	before_save { self.email = email.downcase }
end
