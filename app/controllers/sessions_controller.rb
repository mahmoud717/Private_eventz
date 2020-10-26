class SessionsController < ApplicationController
    def destroy
        reset_session
        redirect_to events_path
    end
    def new
        # @users = User.all
    end
    def create
        @user = User.find_by(username: params[:session][:username])
        if @user 
            session[:current_user] = @user
            flash[:notice] = "You have successfully logged in."
            redirect_to users_path
        else
            flash.now[:notice] = "This username is incorrect"
            render "new"
        end
    end
    
    
end