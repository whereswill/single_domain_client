Rails.application.routes.draw do
  root 'locations#index'
  resources :locations

  get "property/:slug", to: 'properties#show_location', as: :property_path
  get "property/:slug/about", to: 'properties#about_location', as: :property_about_path
  post "property/:slug/do_test", to: 'properties#do_test'
end
