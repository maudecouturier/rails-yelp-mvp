Rails.application.routes.draw do
  resources :restaurants, only: %i[show index new create] do
    resources :reviews, only: %i[new create]
  end
end
