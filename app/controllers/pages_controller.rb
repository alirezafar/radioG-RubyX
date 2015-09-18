class PagesController < ApplicationController
	def home
		@songs = Song.paginate(page: params[:page], per_page: 4)
		@videos = Video.paginate(page: params[:page], per_page: 3)
		#redirect_to songs_path if logged_in?
	end
end
