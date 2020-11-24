class GuestSessionsController < ApplicationController
    def create
        user = User.find_by(email: 'guest@example.com')
        session[:user_id] = user.id
        flash[:success] = 'Logged in as a guest user'
        redirect_to root_url
    end
end
