Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :create] do
    resources :doses, only: :create
  end
  resources :doses, only: :destroy
end
