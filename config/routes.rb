Rails.application.routes.draw do

  resources :quotes, path: :offertes
  resources :invoices, path: :facturen
  resources :products, path: :producten
  resources :customers, path: :klanten
  resources :companies, path: :sjablonen
  resources :contacts, only: [:new, :create], via: [:post]
  devise_for :users, path: :gebruiker

  root                     'oqba#index'
  match 'over-ons'     =>  'oqba#about_us', via: [:get, :post]
  match 'diensten'     =>  'oqba#services', via: [:get, :post]
  match 'pakketten'    =>  'oqba#packages', via: [:get, :post]
  match 'contacts'     =>  'contacts#new',  via: [:get, :post]
  get  '/kies-sjabloon' =>  'invoices#select_company'

## https://vast-fortress-16771.herokuapp.com/

end
