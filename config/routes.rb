# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :authors, controllers: { sessions: 'authors/sessions' }
  
  root to: 'posts#index'

  resources :posts
end
