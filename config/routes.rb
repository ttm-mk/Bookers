Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # homes
  get '/homes' => 'homes#top'
  
  # books
  get '/books' => 'books#index'
  get '/books' => 'books#new'
  post '/books' => 'books#create'
  get '/books/:id' => 'books#show'
  get '/books/:id/edit' => 'books#edit'
  patch '/books/:id' => 'books#update'
  delete '/books' => 'books#destroy'
  
  
end
