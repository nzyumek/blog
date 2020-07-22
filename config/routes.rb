Rails.application.routes.draw do

  devise_for :users
  get '/page', to: "white#page"
  get '/graphy', to: "white#graphy"
  get 'inquiry', to: "white#inquiry"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'white#home'
  resources :microposts
  
end
