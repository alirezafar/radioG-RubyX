class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
    	t.string :name, :releasedate, :artwork
    	t.timestamps
    end
  end
end
