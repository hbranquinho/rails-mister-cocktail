Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: %i[index new create]
    resources :ingredientes, only: :show
  end
  resources :doses, only: :destroy do
    resources :ingredientes, only: %i[create new]
  end
end
