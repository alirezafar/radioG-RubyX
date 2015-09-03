class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
    	t.string :artsyname, :firstname, :lastname, :origin, :email, :websiteurl, :facebook, :instagram, :twitter, :likes, :followers
    	t.timestamps
    end
  end
end
