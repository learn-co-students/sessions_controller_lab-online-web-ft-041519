class SessionsController < ApplicationController

    def new
    end

    def create
        if session[:name]
            redirect_to controller: "application", action: "hello"
        elsif !params[:name] || params[:name] == ""
            redirect_to controller: "sessions", action: "new"
        else
            session[:name] = params[:name]
            redirect_to root
        end
    end

    def destroy
        session.delete :name if session[:name]
    end
end