Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/routines', to: 'routines#index'
  get '/routines/:id', to: 'routines#show'
  post '/routines', to: 'routines#create'
  put '/routines/:id', to: 'routines#update'

end
