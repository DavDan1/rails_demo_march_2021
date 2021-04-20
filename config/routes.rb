Rails.application.routes.draw do
  namespace :api do
    resources :articles, only: [:index, :title, :create]
  end
end
