Rails.application.routes.draw do
  resources :posts do
    resources :comments
    resources :likes
  end
  post 'images/download_image'
  get 'images/get_image_url'

  devise_for :users
  root 'posts#index'
  get 'about', to: 'pages#about'
end

