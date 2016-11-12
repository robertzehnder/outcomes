class CohortsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @cohorts = Cohort.all

  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def destroy
    @user = User.find(params[:user_id])
    @cohort = Cohort.find(params[:id])
    puts @cohort.inspect
    @membership = Membership.find(params[:id])
    @cohort.destroy
    redirect_to user_path(@user)
  end
end
