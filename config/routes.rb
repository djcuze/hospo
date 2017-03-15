Rails.application.routes.draw do
  resources :recipes do
    resources :ingredients
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'recipes#index'

  resources :ingredients
  resources :food_groups
end
