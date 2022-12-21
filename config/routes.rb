Rails.application.routes.draw do
devise_for :users, controllers: { registrations: "registrations"}
resources :items
resources :subcats do
  member do
    get :subcat_open
  end
end
resources :categories

root "items#index"
end
