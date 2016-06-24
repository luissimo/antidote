Rails.application.routes.draw do


 root 'pages#index'

 get 'factuur'         => 'facturen#show'
 get 'mijn-profiel'     => 'pages#profiel'



  ## https://tranquil-garden-84227.herokuapp.com/ | https://git.heroku.com/tranquil-garden-84227.git
end
