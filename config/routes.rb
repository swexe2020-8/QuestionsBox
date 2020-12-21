Rails.application.routes.draw do
  root 'qtitles#index'
  get 'qtitles/index'
  get 'qtitles/show/:id' => 'qtitles#show', as: :qtitles_show
  post 'qtitles/create' => 'qtitles#create'
  post 'meetings/create' => 'meeting#create', as: :meeting_create
  delete 'qtitles/delete/:id' => 'qtitles#delete', as: :qtitle_delete
  #root 'top#top'
  #get 'top/top'
  #resources :replyboxes, only: [:new, :create, :destroy]
  #resources :replys, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
