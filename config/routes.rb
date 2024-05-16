Rails.application.routes.draw do
  
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  get "orders", to: "orders#index"

  post "/graphql", to: "graphql#execute"

  get "up" => "rails/health#show", as: :rails_health_check
  resources :orders do
    resources :payments
  end
  # Defines the root path route ("/")

end
