Rails.application.routes.draw do

  get 'users/index'
  devise_for :users
  root "memes#index"
  resources :memes do
    collection do
      get "random"
      get "learn"
      get "learn_faster"
    end
  end
resources :challenges do
  collection do
    get "index", to: "challenges#index"
    get "challenge", to: "challenges#challenge"
    post "check", to: "challenges#check"
  end
end

end
