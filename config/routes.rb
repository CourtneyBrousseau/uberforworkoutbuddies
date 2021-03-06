Rails.application.routes.draw do
  devise_for :users, :controllers => { registration: 'registrations' }
  resources :workouts
  resources :gyms
  resources :exercises
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "workouts#index"
  patch "/add_user_to_workout", to: "workouts#add_user_to_workout", as: 'add_user_to_workout'
  patch "/remove_user_from_workout", to: "workouts#remove_user_from_workout", as: 'remove_user_from_workout'
end
