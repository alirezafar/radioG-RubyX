class Like < ActiveRecord::Base
  belongs_to :artist
  belongs_to :song
  belongs_to :video

  validates_uniqueness_of :artist, scope: :song
end
