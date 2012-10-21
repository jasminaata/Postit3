class SessionsController < ApplicationController
    def new

    end
    
    def create
        if login(params[:name], params[:password])
            redirect_to root_url, notice: "Logged in!"
        else
            render 'new'
        end
    end

    def destroy
        logout
        redirect_to root_url, notice: "Logged out!"
    end
end
