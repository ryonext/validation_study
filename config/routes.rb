Rails.application.routes.draw do
  resources :accounts do
    collection do
      get "exists", to: "accounts#exist"
    end
  end
  resources :user_validate_only_dbs
  resources :user_validate_only_rails do
    member do
      get "/password/edit", to: "password#edit"
      patch "/password", to: "password#update"
    end
  end
end
