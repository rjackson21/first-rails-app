Rails.application.routes.draw do
  get "/names", to: "names#index"
end
