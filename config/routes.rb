Final::Application.routes.draw do
  get "/search" => 'search#index'
  get "/search/:category_id" => 'search#results'
  post "/search/like" => 'search#like'
  post "/search/unlike" => 'search#unlike'

  get "/products/show/:product_id" => 'products#show'
  get "/products/new" => 'products#new'

  get "/favorites" => 'favorites#index'
  post "/favorites/unlike" => 'favorites#unlike'

  get "/vanity" => 'vanity#index'
  get "/vanity/show/:id" => 'vanity#show'

  get "/profile" => 'profile#index'
  get "/profile/edit" => 'profile#edit'
  patch "/profile" => 'profile#updateprofile'

end
