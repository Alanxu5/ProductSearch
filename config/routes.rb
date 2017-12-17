Rails.application.routes.draw do
  root 'product_search#index'

  resources :product_search
  # , only: [:index]
end
