Rails.application.routes.draw do
  root to: 'home#top'
  get '/starwars' => 'home#starwars'
  get '/characters/:id' => 'home#characters'
  get '/all' => 'home#char_all'
  get '/pokemon/:id' => 'home#pokemon'
end
