Rails.application.routes.draw do
  get '/' => 'home#top'
  get '/posts' => 'post#index'
  get '/post/new' => 'post#new'
  post '/post/new' => 'post#create'
  get '/post/:id' => 'post#detail'
  get 'post/:id/edit' => 'post#edit'
  post 'post/:id/edit' => 'post#update'
  post 'post/:id/delete' => 'post#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
