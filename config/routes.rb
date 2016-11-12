Rails.application.routes.draw do

  resources :quotes, path: :offertes
  resources :invoices, path: :facturen
  resources :products, path: :producten
  resources :customers, path: :klanten
  resources :companies, path: :sjablonen
  resources :contacts, only: [:new, :create], via: [:post]
  devise_for :users, path: :gebruiker
  devise_scope :user do
    get 'gebruiker/inloggen'                => 'devise/sessions#new'
    get 'gebruiker/registreren'             => 'devise/registrations#new'
    get 'gebruiker/bevestigingsinstructies' => 'devise/confirmations#new'
    get 'gebruiker/nieuwe-wachtwoord'       => 'devise/passwords#new'
  end

  root                                 'oqba#index'
  match 'over-ons'                 =>  'oqba#about_us', via: [:get, :post]
  match 'diensten'                 =>  'oqba#services', via: [:get, :post]
  match 'pakketten'                =>  'oqba#packages', via: [:get, :post]
  match 'contacts'                 =>  'contacts#new',  via: [:get, :post]
  get   '/kies-bestaande-sjabloon' =>  'invoices#select_company'
  get   '/kies-bestaande-klant'    =>  'invoices#select_customer'

## https://vast-fortress-16771.herokuapp.com/

end
