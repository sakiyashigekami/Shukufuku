Rails.application.routes.draw do
  root "root#top"

  get  "signup" => "users#new"
  post  "signup" => "users#create"
  get "send_email" => "users#send_email"
  get "mypage/:user_id" => "users#show", as: :mypage

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  get "invitation/:id/profile" => "invitations#profile", as: :profile
  get "invitation/:id/date_place" => "invitations#date_place", as: :date_place
  get "invitation/:id/greeting" => "invitations#greeting", as: :greeting
  get "invitation/:id/attendance" => "invitations#attendance", as: :attendance
  get "invitation/type/:user_id" => "invitations#invitation_type", as: :invitation_type
  get "invitation/couple_name/:user_id/:type_id" => "invitations#couple_name", as: :couple_name
  get "invitation/design/:user_id/:type_id/:id" => "invitations#design", as: :design
  resources :users, except: [:new, :show, :create]
  resources :invitations, only: [:edit, :update, :create, :destroy]
  resources :account_activations, only: [:edit]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
