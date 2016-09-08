Rails.application.routes.draw do

  devise_for :users
  resources :invoices, path: :facturen
  resources :products, path: :producten
  resources :customers, path: :klanten
  resources :companies, path: :instellingen

  root 'invoices#index'


## https://vast-fortress-16771.herokuapp.com/

end
