class PagesController < ApplicationController
	def home
		redirect_to songs_path if logged_in?
	end
end
