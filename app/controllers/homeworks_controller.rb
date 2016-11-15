class HomeworksController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @homework = Homework.new
  end

  def create
    @homework = Homework.create!(homework_params)
    @user = User.find(params[:user_id])
    @user.update(homework_id: @homework.id)
    redirect_to user_path(@user)
  end

  def brandUpdate
    @user = User.find(params[:user_id])
    @homework = Homework.find(params[:id])
    @homework.update(homework_params)
    redirect_to user_path(@user)
  end

  def brand
    @user = User.find(params[:user_id])
    @homework = Homework.find(params[:id])
    puts @homework.inspect
  end

  private
  def homework_params
    params.require(:homework).permit(:brand_strengths, :brand_values, :brand_interests, :brand_personality, :brand_achievement, :brand_mentor)
  end
end
