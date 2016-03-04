Rails.application.routes.draw do
  devise_for :users

  resources :conversations do
    resources :messages

    collection do
      get :inbox
      get :all, action: :index
      get :sent
      get :trash
    end
  end

  root to: 'conversations#index'
end
