Rails.application.routes.draw do
  root 'locations#index'
  resources :locations

  get "property/:slug", to: 'properties#show_location', as: :property_path
end
