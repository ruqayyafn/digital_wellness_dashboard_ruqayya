Rails.application.routes.draw do
  root "home#index"
  resources :quizzes
  resources :resources
  resources :scenarios
  
  resources :scenarios do
    resources :story_parts, only: [:show, :update]
    resource :popup, only: [:show] # This is assuming you have a show action for educational popups
  end

  resources :story_parts do
    member do
      patch 'update/:choice_id', to: 'story_parts#update', as: 'update_choice'
    end
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
