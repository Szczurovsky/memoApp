Rails.application.routes.draw do
  root "memes#index"
  resources :memes do
    collection do
      get "random"
      get "learn"
    end
  end


end
