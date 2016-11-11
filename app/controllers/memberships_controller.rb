class MembershipsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @cohorts = @user.cohorts.all
  end
end
