Tixstr::Application.routes.draw do

  resources :users
  resources :movies, :only => [:index, :show]
  resources :theaters, :only => [:index, :show] do
    member do
      post "buy"
    end
  end
  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'
  root :to => 'theaters#index'

end
