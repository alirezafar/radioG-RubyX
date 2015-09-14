class LoginsController < ApplicationController

	def new

	end

	def create
		artist = Artist.find_by(email: params[:email])
		if artist && artist.authenticate(params[:password])
			session[:artist_id] = artist.id
			flash[:success] = "You are now logged in"
			redirect_to songs_path
		else
			flash.now[:danger] = "Your email or password does not match"
			render 'new'
		end
	end

	def destroy
		session[:artist_id] = nil
		flash[:success] = "You have logged out"
		redirect_to root_path

	end

end
