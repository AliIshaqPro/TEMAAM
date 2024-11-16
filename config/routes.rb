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
  get "blog_grid", to: "home#blog_grid"
  get "blog_list", to: "home#blog_list"
  get "blog_single", to: "home#blog_single"
  get "cart", to: "home#cart"
  get "checkout", to: "home#checkout"
  get "contact", to: "home#contact"
  get "error", to: "home#error"
  get "index", to: "home#index"
  get "index_2", to: "home#index_2"
  get "index-light", to: "home#index-light"
  get "index_2_light", to: "home#index_2_light"
  get "login", to: "home#login"
  get "register", to: "home#register"
  get "shop", to: "home#shop"
  get "shop_2", to: "home#shop_2"
  get "shop_single", to: "home#shop_single"
end
