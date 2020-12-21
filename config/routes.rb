Rails.application.routes.draw do
  root 'qtitles#index'
  get 'qtitles/index'
  get 'qtitles/show/:id' => 'qtitle#show', as: :qtitle_show
  #post 'qtitle/create' => 'qtitle#create'
  #root 'top#top'
  #get 'top/top'
  #resources :replyboxes, only: [:new, :create, :destroy]
  #resources :replys, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
