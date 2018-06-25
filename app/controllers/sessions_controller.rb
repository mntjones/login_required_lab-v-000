class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    if session[:name].empty? || session[:name].nil?
      redirect_to (controller: 'sessions', action: 'new')
  end
  
  def destroy
    
  end
    
end