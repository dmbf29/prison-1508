Rails.application.routes.draw do
  resources :prisons, only: [:show] do
    resources :criminals, only: [:new, :create]
  end
  resources :criminals, only: [:destroy]
end



# prisons#show
# get '/prisons/:id'

# criminals#new
# criminals#create
# get '/prisons/:prison_id/criminals/new
# post '/prisons/:prison_id/criminals

# criminals#destroy
# delete '/criminals/:id'
