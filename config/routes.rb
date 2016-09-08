Rails.application.routes.draw do

  resources :invoices, path: :facturen
  resources :products, path: :producten
  resources :customers, path: :klanten
  resources :companies, path: :instellingen

  root 'pages#profiel'


## https://vast-fortress-16771.herokuapp.com/

end
