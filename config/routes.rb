Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues do
    collection do
      get :personal_index
    end
    resources :bookings, only: [:index, :new, :create, :show, :edit, :update]
  end
  resources :users, only: [] do
    get 'bookings', to: "bookings#personal_index"
  end
end
