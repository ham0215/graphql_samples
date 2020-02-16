Rails.application.routes.draw do
  namespace :admin do
      resources :examinees
      resources :reviews
      resources :links
      resources :users

      root to: "examinees#index"
    end
  devise_for :examinees

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
end
