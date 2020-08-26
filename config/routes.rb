Rails.application.routes.draw do
  root "memos#new"
  resources :memos, only: [:index, :new, :create]
  devise_for :users
end
