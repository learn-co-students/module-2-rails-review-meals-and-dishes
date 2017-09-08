Rails.application.routes.draw do
  resources :users
  resources :meal_dishes
  resources :dishes
  resources :meals

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
