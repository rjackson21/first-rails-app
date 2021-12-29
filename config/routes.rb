Rails.application.routes.draw do
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/", to: "foods#index"
  post "/", to: "foods#create"
  get "/foods", to: "foods#index"
  post "/foods", to: "foods#create"
end