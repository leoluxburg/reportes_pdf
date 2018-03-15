Rails.application.routes.draw do

  resources :busquedas

  resources :nominas do
    collection { post :import}
  end

  resources :reportes,  only: [:index]

  root to: 'nominas#index'

end
