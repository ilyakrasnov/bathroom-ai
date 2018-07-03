Rails.application.routes.draw do

  root 'rooms#index'

  namespace :api, defaults: { format: :json } do
    resources :rooms, only: [:index] do

      post 'occupy', to: 'rooms#occupy'
      post 'free', to: 'rooms#free'
    end

    resources :stats, only: [:index]
  end


end
