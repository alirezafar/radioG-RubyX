class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      flash[:success] = "Your account has been created successfully"
      redirect_to songs_path
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

private
def artist_params
  params.require(:artist).permit(:artsyname, :email, :password)
end

end
