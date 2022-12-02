Rails.application.routes.draw do
devise_for :users, controllers: { registrations: "registrations"}
resources :items, only: %i[new show create edit update destroy]
resources :subcats, only: %i[new show create edit update destroy]
resources :categories, only: %i[new show create edit update destroy]

root "items#index"
end
