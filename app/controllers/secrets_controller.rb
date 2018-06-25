class SecretsController < ApplicationController
  def show
    if !session[:name]
      redirect_to :'sessions/new'
    else
      redirect_to :action=>"show", :controller=>"secrets"
    end
  end
end