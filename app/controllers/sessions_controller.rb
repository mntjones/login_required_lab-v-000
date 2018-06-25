class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    if session[:name].empty? || session[:name].nil?
      redirect_to {}
  end
  
  def destroy
    
  end
    
end