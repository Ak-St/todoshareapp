class ApplicationController < ActionController::Base

 include SessionsHelper

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def guest_user
        @user = User.find_by(email: 'guest@example.com')
        if @user == current_user
            flash[:danger] = 'Guest user cannot edit or save data.'
            redirect_to root_url
        end
  end
end