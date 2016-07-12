Rails.application.routes.draw do

  resources :customers, path: :klanten
  resources :companies, path: :instellingen

 root 'pages#profiel'


## https://vast-fortress-16771.herokuapp.com/ | https://git.heroku.com/vast-fortress-16771.git

end
