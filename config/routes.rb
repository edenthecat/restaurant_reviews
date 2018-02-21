Rails.application.routes.draw do
  namespace :admin do
    resources :restaurants, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    collection do # collection: nests without id
      get 'top', to: 'restaurants#top'
    end
    member do # member: restaurant ID in URL
      get 'chef', to: 'restaurants#chef'
    end
    resources :reviews, only: [ :index, :new, :create ]
  end

  resources :reviews, only: [ :show, :edit, :update, :destroy ]
end
