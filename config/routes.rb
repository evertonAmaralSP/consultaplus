Consultaplus::Application.routes.draw do
  root :to => "home#index"
  get "/", :to => "home#index"

  get   "/users/new", :to => "users#new"
  get   "/users", :to => "users#list"
  post  "/users/new", :to => "users#create"
  get   "/users/:id", :to => "users#show"

  
  get   "/login", :to => "sessions#new", :as => :login
  post  "/login", :to => "sessions#create", :as => false
  get   "/logout", :to => "sessions#destroy"
end
