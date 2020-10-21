Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do

    resources :rooms do
      resources :plants
    end

    resources :plants do
      resources :routines
        resources :specs
    end
  end
end
