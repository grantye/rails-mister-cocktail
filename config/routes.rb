Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:create, :index, :show, :new] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, shallow: true
end
