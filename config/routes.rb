Rails.application.routes.draw do
  root to: 'games#home'
  get '/new', to: 'games#new'
  post '/result', to: 'games#result'
end
