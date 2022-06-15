# frozen_string_literal: true

Rails.application.routes.draw do
  get 'item_seasons/index'
  get 'item_seasons/show'
  get 'produce_items/index'
  get 'produce_items/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
