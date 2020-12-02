Rails.application.routes.draw do
  root 'top#main'
  get 'top/main'
  resources :questions
  resources :replyboxes, only: [:new, :create, :destroy]
  resources :replys, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
