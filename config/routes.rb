Rails.application.routes.draw do
 
  resources :secrets, :sessions
  # Example of regular route:
  get '/' => 'sessions#new'
  

end
