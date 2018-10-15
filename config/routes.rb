Rails.application.routes.draw do
  root to: 'items#index'

  devise_scope :user do
    get "/users/sign_out", to: "devise/sessions#destroy"
  end

  devise_for :users

  resources :items do
    get :upvote,    on: :member
    get :expensive, on: :collection
  end

  get "admin/users_count", to: "admin#users_count"
end
