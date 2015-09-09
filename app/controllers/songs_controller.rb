class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    #@song.artist = Artist.find(1)

    if @song.save
      flash[:success] = "Song Submmited Successfully."
      redirect_to songs_path
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      flash[:success] = "Song was updated succesfully."
      redirect_to song_path(@song)
    else
      render :edit
    end
  end

  private

    def song_params
      params.require(:song).permit(:songtitle, :format, :releasedate, :artworkurl, :filename, :artist_id, :lyric)
    end

end
