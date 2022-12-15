Rails.application.routes.draw do
devise_for :users, controllers: { registrations: "registrations"}
resources :items, only: %i[new show create edit update destroy]
resources :subcats
resources :categories

root "items#index"
end
