Rails.application.routes.draw do


  resources :factuurs
 root 'pages#index'


 get 'mijn-profiel'     => 'pages#profiel'



## https://vast-fortress-16771.herokuapp.com/ | https://git.heroku.com/vast-fortress-16771.git

end
