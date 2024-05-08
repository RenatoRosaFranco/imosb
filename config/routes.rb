# frozen_string_literal: true

Rails.application.routes.draw do

  # Admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Authentication
  devise_for :users, {}

  # App
  root to: 'home#index'
  resources :properties, only: [:index, :show]

  # Marketing
  namespace :landing_pages do
    resources :franchise, only: [:index, :create]
  end
end
