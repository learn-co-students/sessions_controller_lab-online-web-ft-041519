class SessionsController < ApplicationController
  
  def new
  end

  def create
    if params.permit(:name).empty? || params[:name].empty? 
      redirect_to sessions_new_path
      return
    end  
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete :name
  end

end
