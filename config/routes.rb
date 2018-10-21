Rails.application.routes.draw do
  root "root#top"

  get  "signup" => "users#new"
  post  "signup" => "users#create"
  get "send_email" => "users#send_email"
  get "invitation/type/:user_id" => "invitations#invitation_type", as: :invitation_type
  get "invitation/couple_name/:user_id/:type_id" => "invitations#couple_name", as: :couple_name
  get "invitation/design/:user_id/:type_id/:id" => "invitations#design", as: :design
  resources :users, except: [:new, :create]
  resources :invitations
  resources :account_activations, only: [:edit]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
