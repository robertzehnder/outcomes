class HomeworksController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @homework = Homework.new
  end

  def show
    @homework = Link.find(type: "homework")
  end

  def create
    @homework = Homework.create!(homework_params)
    @user = User.find(params[:user_id])
    redirect_to user_path(@user)
  end

  private
  def homework_params
    params.require(:homework).permit(:brand_strengths, :brand_values, :brand_interests, :brand_personality, :brand_achievement, :brand_mentor)
  end
end
