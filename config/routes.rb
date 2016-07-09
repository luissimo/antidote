Rails.application.routes.draw do


  resources :customers
  resources :companies

 root 'pages#profiel'



## https://vast-fortress-16771.herokuapp.com/ | https://git.heroku.com/vast-fortress-16771.git

end
