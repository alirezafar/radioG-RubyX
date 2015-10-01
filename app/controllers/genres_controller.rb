class GenresController < ApplicationController

def show
	@genre = Genre.find(params[:id])
	@songs = @genre.songs.paginate(page: params[:page], per_page: 16)
end

def new
	@genre = Genre.new
end

def create
	@genre = Genre.new(genre_params)
	if @genre.save
		flash[:success] = "Genre was created successfully"
		redirect_to songs_path
	else
		render 'new'
	end
end

private

def genre_params

	params.require(:genre).permit(:name)

end

end
