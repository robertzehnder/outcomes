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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def create
    @user = User.create!(user_params)
    session[:name] = @user.email
    redirect_to user_path(@user)
  end

  def login
    @user = User.find(params[:id])
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.memberships.destroy
    @user.destroy
    redirect_to '/'
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :image_url)
  end
end
