Rails.application.routes.draw do

  root 'rooms#index'

  namespace :api, defaults: { format: :json } do
    resources :occupations, only: [:index]
  end


end
