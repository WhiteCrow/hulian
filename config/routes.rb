Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  resources :base_images
  resources :captioned_images do
    get :preview, on: :collection
    delete :discard, on: :member
  end
end
