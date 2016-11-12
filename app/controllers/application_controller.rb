class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def back
    redirect_to request.referer
  end
end
