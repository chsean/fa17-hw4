Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to:'displays#show'
  get '/new', to:'displays#new'
  post '/create', to:'displays#create'
end
