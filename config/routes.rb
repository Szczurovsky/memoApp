Rails.application.routes.draw do

  devise_for :users
  root "memes#index"
  resources :memes do
    collection do
      get "random"
      get "learn"
      get "learn_faster"
      # get "challenge_20"
      # get "challenge_50"
      # get "challenge_1"
      # get "challenge", to: "memes#challenge"
      # # get :check
      # # get '/challenge/:challenge_id', to: 'check#show', as: 'check'
      # post :check

    end
  end
resources :challenges do
  collection do
    get "challenge", to: "challenges#challenge"
    post "check", to: "challenges#check"
  end
end

end
