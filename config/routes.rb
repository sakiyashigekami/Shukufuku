Rails.application.routes.draw do
  root "root#top"

  get  "signup" => "users#new"
  post  "signup" => "users#create"
  get "send_email" => "users"
  resources :users, except: [:new, :create]
  resources :account_activations, only: [:edit]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
