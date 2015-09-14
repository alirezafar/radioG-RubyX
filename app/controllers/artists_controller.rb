class ArtistsController < ApplicationController

  def index
    @artists = Artist.paginate(page: params[:page], per_page: 3)
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      flash[:success] = "Your account has been created successfully"
      session[:artist_id] = @artist.id
      
      redirect_to songs_path
    else
      render 'new'
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      flash[:success] = "Profile has been updated successfully"
      redirect_to songs_path
    else
      render 'edit'
    end
  end

  def show

    @artist = Artist.find(params[:id])
    @songs = @artist.songs.paginate(page: params[:page], per_page: 4)


  end

private
def artist_params
  params.require(:artist).permit(:artsyname, :email, :password)
end

end
