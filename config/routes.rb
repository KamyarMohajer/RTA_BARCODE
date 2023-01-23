Rails.application.routes.draw do
  resources :products
  resources :scans
  post 'scan/create/:id' ,to: 'scans#create'
  get 'scan/status/:id', to: 'scans#status'
end
