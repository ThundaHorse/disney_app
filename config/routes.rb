Rails.application.routes.draw do
  namespace :api do 
    post 'users' => 'users#create' 
    post '/sessions' => 'sessions#create'

    get '/trips' => 'trips#index' 
    post '/trips' => 'trips#create' 
    get '/trips/:id' => 'trips#show' 
    patch '/trips/:id' => 'trips#update'
    delete '/trips/:id' => 'trips#destroy'

    get '/parks' => 'parks#index' 
    post '/parks' => 'parks#create'
    get '/parks/:id' => 'parks#show'
    patch '/parks/:id' => 'parks#update'
    delete '/parks/:id' => 'parks#delete' 

    get '/interests' => 'interests#index' 
    post '/interests' => 'interests#create'
    get '/interests/:id' => 'interests#show' 
    patch '/interests/:id' => 'interests#upate' 
    delete '/interests/:id' => 'interests#delete' 

    

  end 
end
