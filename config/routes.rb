Rails.application.routes.draw do
  devise_for :users
  root "memes#index"
  resources :memes do
    collection do
      get "random"
      get "learn"
      get "learn_faster"
      get "challenge_20"
      get "challenge_50"
      get "challenge_1"
      get "/challenge", to: "memes#challenge"
      # get '/challenge/:challenge_id', to: 'check#show', as: 'check'
      post :check

    end
  end


end
