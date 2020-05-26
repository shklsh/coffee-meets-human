class SessionsController < ApplicationController
  skip_before_action :require_user, only: [:new, :create]
  
  def new
  end

  def create 
    user = User.find_by(email: params[:email])
    if user  && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "You have logged in"
      redirect_to users_path(user)
    else
      flash.now[:danger] = "There was something wrong with your login information"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have logged out"
    redirect_to login_path
  end
end
