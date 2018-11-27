Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [] do
    resources :venues
  end

  resources :venues, only: [] do
    resources :bookings, only: [:index, :new, :create, :show]
  end
end
