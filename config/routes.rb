Rails.application.routes.draw do
  get 'chats/index'
  get 'chats/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chat
end
