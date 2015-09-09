class PagesController < ApplicationController
	def home
		@songs = Song.all
	end
end
