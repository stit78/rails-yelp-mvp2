Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %I[index show new create] do
    resources :reviews, only: %I[new create]
  end
end
