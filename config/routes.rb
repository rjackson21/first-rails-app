Rails.application.routes.draw do
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/foods", to: "foods#index"
  post "/foods", to: "foods#create"
end