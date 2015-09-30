class SongGenres < ActiveRecord::Migration
  def change
  	create_table :song_genres do |t|
  		t.integer :genre_id, :song_id
  	end
  end
end
