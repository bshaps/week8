Rails.application.routes.draw do

  root 'investments#index'
  resources :investments

end
