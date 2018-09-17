Rails.application.routes.draw do
  root 'locations#index'
  resources :locations

  get "property/:slug", to: 'properties#show_location', as: :property_path
  get "property/:slug/about", to: 'properties#about_location', as: :property_about_path
  post "property/:slug/do_test", to: 'properties#do_test'

  # JSON feed to fake the self storage inventory feed
  get "api/v1/storage_facilities/:slug/storage_units", to: 'properties#storage_units', as: :property_units_path
  # JSON feed to fake the multi family inventory feed
  get "api/v1/apartment_complexes/:slug/floorplans", to: 'properties#storage_units', as: :property_floorplans_path

  post "snippet", to: 'snippets#update', as: :snippets_path
end
