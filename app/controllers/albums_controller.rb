class AlbumsController < ApplicationController

	def show
		@album = Album.find(params[:id])
		@songs = @album.songs.paginate(page: params[:page], per_page: 16)
	end

	def new
		@album = Album.new
	end

	def create
		@album = Album.new(album_params)
		if @album.save
			flash[:success] = "Album was created successfully"
			redirect_to songs_path
		else
			render 'new'
		end
	end


	private

	def album_params

		params.require(:album).permit(:name)

	end

end
