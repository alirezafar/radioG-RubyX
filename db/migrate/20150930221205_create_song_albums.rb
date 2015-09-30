class CreateSongAlbums < ActiveRecord::Migration
  def change
    create_table :song_albums do |t|
    	t.integer :album_id, :song_id
    end
  end
end
