class SessionsController < ApplicationController
    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])

        if @user.save
            login!(@user)
            redirect_to users_url
        else
            render :new
        end
    end
end
