class SecretsController < ApplicationController
  def show
    if !session[:name]
      redirect_to '/'
      
  end
end