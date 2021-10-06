Rails.application.routes.draw do
  get "/cards" => "cards#index"
  post "/cards" => "cards#create"
  get "/cards/:id" => "cards#show"
  patch "/cards/:id" => "cards#update"
  delete "/cards/:id" => "cards#destroy"

  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"
end
