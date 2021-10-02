Rails.application.routes.draw do
  get "/cards" => "cards#index"
  post "/cards" => "cards#create"
  get "/cards/:id" => "cards#show"
  patch "/cards/:id" => "cards#update"
  delete "/cards/:id" => "cards#destroy"
end
