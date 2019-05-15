Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  get 'restaurants/:restaurant_id/reviews', to: 'reviews#index'

end
