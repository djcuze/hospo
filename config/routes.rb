Rails.application.routes.draw do
  resources :dishes do
    resources :ingredients
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'dishes#index'
end
