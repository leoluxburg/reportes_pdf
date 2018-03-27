Rails.application.routes.draw do


  devise_for :users
  # resources :busquedas

  resources :filtros

  resources :nominas do
    collection { post :import}
  end

  resources :reportes,  only: [:index]

  root to: 'nominas#index'

end
