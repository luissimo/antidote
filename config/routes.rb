Rails.application.routes.draw do


 root 'pages#index'

 get 'factuur' => 'pages#factuur'


  ## https://tranquil-garden-84227.herokuapp.com/ | https://git.heroku.com/tranquil-garden-84227.git
end
