Rails.application.routes.draw do

  devise_for :users
  # root 'rooms#show'
  get 'home/top'
  # get 'chats/index'
  # get 'chats/show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :chat, only[]
end
