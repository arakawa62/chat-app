Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  resource :users, only: [:edit, :update]
  resource :rooms, only: [:new, :create]
end
