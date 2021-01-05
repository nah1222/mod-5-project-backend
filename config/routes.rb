Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :routines, only: [:index, :show, :create, :update, :destroy]
  # get '/routines', to: 'routines#index'
  # get '/routines/:id', to: 'routines#show'
  # post '/routines', to: 'routines#create'
  # put '/routines/:id', to: 'routines#update'

  resources :workout_routine_objs, only: [:index, :show, :create, :update, :destroy]
  # get '/workout_routine_objs', to: 'workout_routine_objs#index'
  # get '/workout_routine_objs/:id', to: 'workout_routine_objs#show'
  # post '/workout_routine_objs', to: 'workout_routine_objs#create'
  # put '/workout_routine_objs/:id', to: 'workout_routine_objs#update'

  resources :workouts, only: [:index, :show, :create, :update, :destroy]
  # get '/workouts', to: 'workouts#index'
  # get '/workouts/:id', to: 'workouts#show'
  # post '/workouts', to: 'workouts#create'
  # put '/workouts/:id', to: 'workouts#update'

  resources :users, only: [:index, :show, :create, :update, :destroy]

  post "/login", to: "sessions#login", as: 'login'
  get "/auto_login", to: "sessions#auto_login"
  get "/user_is_authed", to: "application#user_is_authed"

end
