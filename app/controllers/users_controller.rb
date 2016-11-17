class UsersController < ApplicationController
  def welcome
  end

  def show
    @user = User.find(params[:id])
    @session = session[:name]
    @roadmaps = Roadmap.all
    @link = Link.first
  end

  def new
    @user = User.new
    @homework = Homework.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.inspect
    @user.update!(user_params)
    redirect_to user_path(@user)
  end

  def create
    @user = User.create(user_params)
    @user.homework_id = @user.id
    @user.save
    puts @user.inspect
    redirect_to user_path(@user)
  end

  def login
    @user = User.find(params[:id])
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @memberships = Membership.where(user_id: @user.id)
    @memberships.each do |x|
      x.destroy
    end
    @user.destroy
    redirect_to '/'
  end

  def homework
    @user = User.find(params[:id])
    @links = Link.where(link_type: 'homework')
    @users = User.all
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :image_url, :homework_id)
  end
end
