Rails.application.routes.draw do
  get "prompts/index"
  get "prompts/show"
  get "prompts/new"
  get "prompts/edit"
  get "schedules/index"
  get "schedules/show"
  get "schedules/new"
  get "schedules/edit"
  get "shifts/index"
  get "shifts/show"
  get "shifts/new"
  get "shifts/edit"
  get "users/index"
  get "users/show"
  get "users/new"
  get "users/edit"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  resources :users
  resources :shifts
  resources :schedules


  # Defines the root path route ("/")
  # root "posts#index"
end
