Rails.application.routes.draw do

  get 'contacts/new'
  get 'contacts/create'

  devise_for :users, path: :gebruiker
  resources :invoices, path: :facturen
  resources :products, path: :producten
  resources :customers, path: :klanten
  resources :companies, path: :instellingen
  resources :contacts, only: [:new, :create], via: [:post]

  root                   'oqba#index'
  match 'over-ons'   =>  'oqba#about_us', via: [:get, :post]
  match 'diensten'   =>  'oqba#services', via: [:get, :post]
  match 'pakketten'  =>  'oqba#packages', via: [:get, :post]
  match 'contacts'   =>  'contacts#new',  via: [:get, :post]


## https://vast-fortress-16771.herokuapp.com/

end
