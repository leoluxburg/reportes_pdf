Rails.application.routes.draw do


  devise_for :users
  # resources :busquedas

  resources :filtros do
    member do
     get 'reporte_cheques', to: "filtros#reporte_cheque"
   end
 end

 resources :nominas do
  collection { post :import}
end

resources :reportes,  only: [:index]

root to: 'nominas#index'



end
