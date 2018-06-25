class SecretsController < ApplicationController
  
  def show
    if !session[:name]
      redirect_to :action=>"new", :controller=>"sessions"
    else
      redirect_to :action=>"show", :controller=>"secrets"
    end
  end
end