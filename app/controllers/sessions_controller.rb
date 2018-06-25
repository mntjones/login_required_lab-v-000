class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    if params[:name].empty? || params[:name].nil?
      redirect_to :new
    else
      session[:name] = params[:name]
      redirect_to (controller: 'secrets', action: 'show')
    end
  end
  
  def destroy
    session.delete :name
    redirect_to :new
  end
    
end