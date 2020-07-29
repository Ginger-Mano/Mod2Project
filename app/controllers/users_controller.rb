class UsersController < ApplicationController

    def index
        @users = User.all
    end
    
    def show
        @user = User.find(params[:id])
    end

    def showreservations
        @user = User.find(params[:id])
    end

    def new 
      @user = User.new
      @errors = flash[:errors]
    end

    def create
        user = User.create(user_params)
        # redirect_to user_path(@user)
        if user.valid?
            redirect_to user_path(user.id)
        else
            flash[:errors] = user.errors.full_messages
            redirect_to new_user_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :location)
    end
end
