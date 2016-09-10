Rails.application.routes.draw do

  devise_for :users, path: :gebruiker
  resources :invoices, path: :facturen
  resources :products, path: :producten
  resources :customers, path: :klanten
  resources :companies, path: :instellingen

  root                 'oqba#index'
  get 'over-ons'   =>  'oqba#about_us'
  get 'diensten'   =>  'oqba#services'
  get 'pakketten'  =>  'oqba#packages'
  get 'contact'    =>  'oqba#contact'


## https://vast-fortress-16771.herokuapp.com/

end
