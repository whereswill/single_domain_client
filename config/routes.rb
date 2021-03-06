Rails.application.routes.draw do
  resources :static_feeds
  resources :features do
    member do
      get :thank_you
    end
  end

  root 'locations#index'
  resources :locations

  get "sitemap", to: 'locations#sitemap'

  get "property/:slug", to: 'properties#show_location', as: :property_path
  get "property/:slug/about", to: 'properties#about_location', as: :property_about_path
  get "property/:slug/gallery", to: 'properties#gallery_location', as: :property_gallery_path
  get "property/:slug/features", to: 'properties#features_location', as: :location_features
  post "property/:slug/do_test", to: 'properties#do_test'
  post "property/:slug/features", to: 'features#create'

  # JSON feed to fake the self storage inventory feed
  get "api/v1/storage_facilities/:slug/storage_units", to: 'properties#storage_units', as: :property_units_path
  # JSON feed to fake the multi family inventory feed
  get "api/v1/apartment_complexes/:slug/floorplans", to: 'properties#storage_units', as: :property_floorplans_path

  # JSON feed to fake the search for static inventory locations
  get "api/v2/locations", to: 'static_feeds#locations', as: :static_locations_feed_path

  post "snippet", to: 'snippets#update', as: :snippets_path
end
