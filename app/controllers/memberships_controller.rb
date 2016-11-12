class MembershipsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @cohorts = @user.cohorts.all
  end

  def new
    @user = User.find(params[:user_id])
    @cohort = Cohort.find(params[:cohort_id])
    @membership = Membership.create(
      user_id: @user.id,
      cohort_id: @cohort.id
    )
    redirect_to user_path(@user)
  end


end
