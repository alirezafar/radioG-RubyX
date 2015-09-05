class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
    	t.string :title, :releasedate, :artwork, :format, :width, :height, :url
    	t.timestamps
    end
  end
end
