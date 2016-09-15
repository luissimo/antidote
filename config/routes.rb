Rails.application.routes.draw do

  devise_for :users, path: :gebruiker
  resources :invoices, path: :facturen
  resources :products, path: :producten
  resources :customers, path: :klanten
  resources :companies, path: :instellingen

  root                   'oqba#index'
  match 'over-ons'   =>  'oqba#about_us', via: [:get, :post]
  match 'diensten'   =>  'oqba#services', via: [:get, :post]
  match 'pakketten'  =>  'oqba#packages', via: [:get, :post]
  match 'contact'    =>  'oqba#contact',  via: [:get, :post]


## https://vast-fortress-16771.herokuapp.com/

end
