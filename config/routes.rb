Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "home#index" # Set index as the root page

  # Define routes for each view
  get "about", to: "home#about"
  get "blog", to: "home#blog"
  get "blog-grid", to: "home#blog-grid"
  get "blog-list", to: "home#blog-list"
  get "blog-single", to: "home#blog-single"
  get "cart", to: "home#cart"
  get "checkout", to: "home#checkout"
  get "contact", to: "home#contact"
  get "error", to: "home#error"
  get "index-2", to: "home#index-2"
  get "index-light", to: "home#index-light"
  get "index-2-light", to: "home#index-2-light"
  get "login", to: "home#login"
  get "register", to: "home#register"
  get "shop", to: "home#shop"
  get "shop-2", to: "home#shop-2"
  get "shop_single", to: "home#shop_single"
  
  post '/cart/add', to: 'home#add_to_cart', as: 'add_to_cart'
  resources :products, only: [:show, :destroy]
 post '/cart/update', to: 'home#update_cart', as: 'update_cart'
  delete '/cart/remove', to: 'home#remove_from_cart', as: 'remove_from_cart'
end
