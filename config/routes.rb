Rails.application.routes.draw do
  devise_for :users



  resources :categories, shallow: true, except: :index do
    resources :products
  end

  root to: 'home#index'

end
