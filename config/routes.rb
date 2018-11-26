Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [] do
    resources :venue
  end

  resources :venue, only: [] do
    resources :booking, only: [:index, :new, :create, :show]
  end
end
