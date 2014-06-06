Final::Application.routes.draw do
  get "/" => 'home#index'

  get "/search" => 'search#index'
  get "/search/:category_id" => 'search#results'
  post "/search/like" => 'search#like'
  post "/search/unlike" => 'search#unlike'

  get "/products/show/:product_id" => 'products#show'
  get "/products/new" => 'products#new'
  post "/products/like" => 'products#like'
  post "/products/unlike" => 'products#unlike'

  get "/favorites" => 'favorites#index'
  post "/favorites/unlike" => 'favorites#unlike'

  get "/vanity" => 'vanity#index'
  post "/vanity/remove" => 'vanity#remove'
  get "/vanity/show/:id" => 'vanity#show'

  get "/signup" => 'user#new'
  post "/signup" => 'user#create'

  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'
  get "/logout" => 'sessions#logout'

  get "/rating/new/" => 'ratings#new'
  get "/rating/:product_id" => 'ratings#show'
  post "/rating" => 'ratings#add'

  get "/profile" => 'user#index'
  get "/profile/edit" => 'user#edit'
  patch "/profile" => 'user#updateprofile'

end
