Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :v1 do
    resources :users
    post 'login', to: 'sessions#create'
    resources :kudos
    resources :user_kudos
    post 'my_kudos', to: 'user_kudos#my_kudos'
    post 'available_user_kudos', to: 'user_kudos#available_user_kudos'
    get 'timeline_data', to: 'charts#timeline_data'
  end
end
