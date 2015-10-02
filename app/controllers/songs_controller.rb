class SongsController < ApplicationController

  before_action :set_song, only: [:edit, :update, :show, :like]
  before_action :require_user, except: [:show, :index, :like]
  before_action :require_user_like, only: [:like]
  before_action :require_same_user, only: [:edit, :update]

  def index
    @songs = Song.paginate(page: params[:page], per_page: 12)
  end

  def show
    #set_song is happening here
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.artist = current_user

    if @song.save
      flash[:success] = "Song Submmited Successfully."
      redirect_to songs_path
    else
      render :new
    end
  end

  def edit
    #set_song is happening here
  end

  def update
    if @song.update(song_params)
      flash[:success] = "Song was updated succesfully."
      redirect_to song_path(@song)
    else
      render :edit
    end
  end
  def like
  #set_song is happening here
  like = Like.create(like: params[:like], artist: current_user, song: @song)
  if like.valid?
    flash[:success] = "Your selection was successful"
    redirect_to :back
  else
    flash[:danger] = "You can only like/dislike an artwork once"
    redirect_to :back
  end
end
private

def song_params
  params.require(:song).permit(:songtitle, :format, :releasedate, :artworkurl, :filename, :artist_id, :lyric, genre_ids: [], album_ids: [])
end

def set_song
  @song = Song.find(params[:id])
end

def require_same_user
  if current_user != @song.artist
    flash[:danger] = "You can only edit your own song."
    redirect_to songs_path
  end 

end

def require_user_like
    if !logged_in?
      flash[:danger] = "You must be logged in."
      redirect_to :back
    end
end

end
