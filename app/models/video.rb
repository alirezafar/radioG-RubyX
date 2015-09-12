class Video < ActiveRecord::Base
	belongs_to :artist
	has_many :likes
end
