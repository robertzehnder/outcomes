class UsersController < ApplicationController
  def welcome
  end

  def show
    @user = User.find(params[:id])
    @session = session[:name]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:name] = @user.email
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
