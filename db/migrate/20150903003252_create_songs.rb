class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
    	t.string :songtitle, :releasedate, :format, :lyric, :speed, :genreid, :languageid, :artistid, :albumid, :artworkurl
   		t.timestamps
    end
  end
end