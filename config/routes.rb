# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'shopping_list/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'food#index'

  resources :food, only: %i[index new create destroy] do
  end

  resources :recipe, only: %i[index new create show destroy] do
  end

  resources :inventory, only: %i[index new create show destroy] do
  end

  resources :shopping_list, only: %i[index] do
  end

  get 'public-recipe', to: 'recipe#public'
end
