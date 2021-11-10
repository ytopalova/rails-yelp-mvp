# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
    # post 'restuarants/:restaurant_id/reviews', to: 'reviews#create'
    resources :reviews, only: %i[new create]
  end

  resources :reviews, only: [:destroy]
  # delete 'reviews/:id', to: 'reviews#destroy'
end
