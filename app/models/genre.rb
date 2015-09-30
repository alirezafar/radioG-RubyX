class Genre  < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 2, maximum: 25 }
	has_many :song_genres
	has_many :songs, through: :song_genres
end
