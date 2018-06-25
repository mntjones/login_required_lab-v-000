class SecretsController < ApplicationController
  before_action :require_login
  
  def show
    if !session[:name]
      redirect_to :action=>"new", :controller=>"sessions"
    else
      redirect_to :action=>"show", :controller=>"secrets"
    end
  end
  
  private
 
  def require_login
    redirect_to :action=>"new", :controller=>"sessions" unless current_user
  end
end