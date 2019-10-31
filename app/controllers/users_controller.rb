class UsersController < ApplicationController
    # before_action :authorise_user, :except => [:index]
    
    def new
    end

    def create
        user = User.new(
            name: params[:name],
            age: params[:age],
            password: params[:password],
            password_confirmation: params[password_confirmation]
        )
        if user.save 
            session[:user_id] = user.id
            flash[:success] = "Successfully Created User!"
            redirect_to '/home'
        else
            flash[:warning] = "Invalid Email or Password"
            redirect_to '/signup'
        end
    end
end
