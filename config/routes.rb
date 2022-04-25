Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'about', to: 'pages#about'
  root to: 'pages#home'
  # get 'journal', to: 'journal#index'
  get '/journal/show', to: 'journal#show'
  resources :journals, only: [:index] do
    collection do
      get :this_week
    end
  end
  # ressource :journal
  # , only: [:index, :show] do
  #   resources :products, only: [:index, :show]
  # end
  # Generic syntax:
  # verb 'path', to: 'controller#action'
end
