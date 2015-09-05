class AddArtistIdToVideos < ActiveRecord::Migration
  def change
  	add_column :videos, :artist_id, :integer
  end
end
