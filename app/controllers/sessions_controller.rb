class SessionsController < ApplicationController
 def new
   @user = User.new
 end

 def create
 input_username = params[:user][:email]

   if User.exists?(email: input_username)
     @user = User.find_by(email: input_username)

     if @user.password == params[:user][:password]
       flash[:notice] = "You're signed in!"
       session[:user_id] = @user.id
       redirect_to user_path(@user)
     else
       flash[:alert] = "Wrong password!"
       redirect_to new_session_path
     end

   else
     flash[:alert] = "That user doesn't exist!"
     redirect_to new_session_path
   end
 end

 def destroy
   reset_session
   flash[:notice] = "You're signed out!"
   redirect_to courses_path
 end

end
