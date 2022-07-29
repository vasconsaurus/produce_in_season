# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home_page#show'

  resources :produce_items, only: %i[index show]
  resources :item_seasons, only: %i[index show], param: :month_index

  get ':slug', to: 'pages#show', as: 'pages'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
