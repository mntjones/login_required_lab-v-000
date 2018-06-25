class SecretsController < ApplicationController
  def show
    if !session[:name]
      redirect_to '/'
    else
      :show
    end
  end
end