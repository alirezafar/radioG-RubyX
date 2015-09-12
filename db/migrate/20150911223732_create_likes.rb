class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.boolean :like
      t.integer :artist_id, :song_id, :video_id
      t.timestamps
    end
  end
end
