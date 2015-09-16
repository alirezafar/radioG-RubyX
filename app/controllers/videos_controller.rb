class VideosController < ApplicationController
def index
	@videos = Video.paginate(page: params[:page], per_page: 3)
end

  def show
    @video = Video.find(params[:id])
  end

private

    def video_params
      params.require(:video).permit(:title, :format, :artwork, :artist_id)
    end

end