class UsersController < ApplicationController 
    def new 
        @user = User.new 
    end

    def create 
        @user = User.create(user_params)    
        if params[:user][:admin] == "1"  
            @user.admin = true 
            @user.save 
        end
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    def show  
        @user = User.find(params[:id])
    end

    def get_sign
    end

    def signin
        user = User.find_by(name: params[:user][:name])
        session[:user_id] = user.id
        redirect_to user_path(user)
    end

    def destroy 
        session.delete :user_id 
        redirect_to '/'
    end

    private 

    def user_params 
        params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password)
    end
end