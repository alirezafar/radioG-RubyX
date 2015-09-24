class ArtistsController < ApplicationController

  before_action :set_artist, only: [:edit, :update, :show]
  before_action :require_same_user, only: [:edit, :update]

  def index
    @artists = Artist.paginate(page: params[:page], per_page: 12)
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

  end

  def update
    if @artist.update(artist_params)
      flash[:success] = "Profile has been updated successfully"
      redirect_to artist_path(@artist)
    else
      render 'edit'
    end
  end

  def show

    @songs = @artist.songs.paginate(page: params[:page], per_page: 8)


  end

  private
  def artist_params
    params.require(:artist).permit(:artsyname, :firstname, :lastname, :origin, :websiteurl, :email, :password, :facebook, :instagram, :twitter)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def require_same_user
    if current_user != @artist
      flash[:danger] = "You can only edit your own profile"
      redirect_to root_path
    end
  end

end
