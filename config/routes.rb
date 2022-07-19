Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => "posts#home"

  # resources :posts do
  #   resources :comments
  # end
  resources :posts do
    post 'check'
    resources :comments
  end


end
