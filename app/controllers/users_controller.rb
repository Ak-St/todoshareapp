class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:index, :show]

  def index
    @users = User.order(name: :asc).page(params[:page]).per(25)
  end

  def new
    @user = User.new
  end

  def create
  @user = User.new(user_params)

    if @user.save
      flash[:success] = 'Signed up.'
      redirect_to login_url
    else
      flash.now[:danger] = 'Signed-up Failed.'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
  