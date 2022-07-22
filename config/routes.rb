Rails.application.routes.draw do
  devise_for :users

  root :to => "posts#home"

  resources :posts do
    post 'check'
    resources :comments
  end

  resources :disasters

  get '/:url_short' => 'posts#redirect'
end
