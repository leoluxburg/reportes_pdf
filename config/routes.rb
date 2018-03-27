Rails.application.routes.draw do

  resources :busquedas

  resources :filtros

  resources :nominas do
    collection { post :import}
  end

  resources :reportes,  only: [:index]

  root to: 'nominas#index'

end
