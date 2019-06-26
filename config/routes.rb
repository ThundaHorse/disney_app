Rails.application.routes.draw do
  namespace :api do 
    post '/users' => 'users#create' 
    get '/users' => 'users#index'
    get '/users/:id' => 'users#show'
    patch '/users/:id' => 'users#update'
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
    delete '/parks/:id' => 'parks#destroy' 

    get '/interests' => 'interests#index' 
    post '/interests' => 'interests#create'
    get '/interests/:id' => 'interests#show' 
    patch '/interests/:id' => 'interests#upate' 
    delete '/interests/:id' => 'interests#destroy' 

    get '/attractions' => 'attractions#index' 
    post '/attractions' => 'attractions#create'
    get '/attractions/:id' => 'attractions#show' 
    post '/attractions/:id' => 'attractions#update' 
    delete '/attractions/:id' => 'attractions#destroy' 

    get '/tickets' => 'tickets#index' 
    post '/tickets' => 'tickets#create' 
    get '/tickets/:id' => 'tickets#show' 
    patch '/tickets/:id' => 'tickets#update' 
    delete '/tickets/:id' => 'tickets#destroy'
  end 
end
