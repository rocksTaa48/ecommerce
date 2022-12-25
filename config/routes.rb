Rails.application.routes.draw do
devise_for :users, controllers: { registrations: "registrations"}

resources :items do
  collection do
    post :index
  end
end

resources :subcats

resources :categories

root "pages#index"
end
