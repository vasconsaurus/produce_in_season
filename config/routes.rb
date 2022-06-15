# frozen_string_literal: true

Rails.application.routes.draw do
  resources :item_seasons, only: %i[index show]
  resources :produce_items, only: %i[index show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
