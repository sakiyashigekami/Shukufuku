Rails.application.routes.draw do
  root "root#top"

  resources :users, except: [:new, :show, :create]
  get  "signup" => "users#new"
  post  "signup" => "users#create"
  get "send_email" => "users#send_email"
  get "mypage/:user_id" => "users#show", as: :mypage

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  resources :invitations, only: [:show, :update, :create, :destroy]
  get "invitaitons/start" => "invitations#start", as: :start
  get "invitations/type" => "invitations#type", as: :type
  get "invitations/:id/profile" => "invitations#profile", as: :profile
  get "invitations/:id/date_place" => "invitations#date_place", as: :date_place
  get "invitations/:id/greeting" => "invitations#greeting", as: :greeting
  get "invitations/:id/preview" => "invitations#preview", as: :preview
  get "invitations/couple_name/:type_id" => "invitations#couple_name", as: :couple_name
  get "invitations/design/:type_id/:id" => "invitations#design", as: :design

  resources :attendances, except: [:show]
  get "invitations/:id/attendance" => "attendances#show", as: :attendance_show

  resources :account_activations, only: [:edit]

  resources :message_cards, only: [:show, :update, :create, :destroy]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
