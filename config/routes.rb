Rails.application.routes.draw do
  devise_for :users
  root "memes#index"
  resources :memes do
    collection do
      get "random"
      get "learn"
      get "learn_faster"
    end
  end


end
