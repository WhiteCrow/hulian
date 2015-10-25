Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  resources :base_images
  resources :captioned_images do
    get :preview, on: :collection
  end
  resources :images, only: [:show, :index] do
    get :generate, on: :collection
  end
end
