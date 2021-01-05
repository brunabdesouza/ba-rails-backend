Rails.application.routes.draw do

  resources :flights
  resources :reservations
  resources :airplanes
  resources :users

end
