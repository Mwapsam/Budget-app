Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'categories#index', as: :authenticated_root
    end

    unauthenticated do
      root 'user#index', as: :unauthenticated_root
    end
  end

  get 'categories/most_recent_list'
  get 'categories/most_ancient_list'

  resources :categories, only: %i[index new create show destroy update] do
    resources :payments, only: %i[index new create destroy update]
  end

  resources :users, only: %i[index]
end
