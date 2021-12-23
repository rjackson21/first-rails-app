Rails.application.routes.draw do
  get "/names", to: "names#index"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/foods", to: "foods#index"
end