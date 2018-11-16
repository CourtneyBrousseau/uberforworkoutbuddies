Rails.application.routes.draw do
  resources :workouts
  resources :gyms
  resources :exercises
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
