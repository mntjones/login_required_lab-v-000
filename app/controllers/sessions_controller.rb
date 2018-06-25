class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    if params[:name].empty? || params[:name].nil?
      redirect_to (controller: 'sessions', action: 'new')
    else
      session[:name] = params[:name]
    end
  end
  
  def destroy
    session.delete :name
    redirect_to (controller: 'sessions', action: 'new')
  end
    
end