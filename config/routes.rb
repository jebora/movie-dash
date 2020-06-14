# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  ## Leave here for learnding
  namespace :api do
    namespace :v1 do
      resources :movies, only: %i[index create destroy update]
    end
  end

  root to: 'home#index'
end
