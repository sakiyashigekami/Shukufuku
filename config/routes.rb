Rails.application.routes.draw do
  root "root#top"

  get  "signup" => "users#new"
  post  "signup" => "users#create"
  get "send_email" => "users#send_email"
  get "mypage/:user_id" => "users#show", as: :mypage
  get "payment" => "users#payment"
  resources :users, except: [:new, :show, :create]

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  get "invitations/type" => "invitations#type", as: :type
  get "invitations/index" => "invitations#index", as: :index
  get "invitations/:id/profile" => "invitations#profile", as: :profile
  get "invitations/:id/date_place" => "invitations#date_place", as: :date_place
  get "invitations/:id/greeting" => "invitations#greeting", as: :greeting
  get "invitations/:id/preview" => "invitations#preview", as: :preview
  get "invitations/couple_name/:type_id" => "invitations#couple_name", as: :couple_name
  get "invitations/design/:id/:type_id" => "invitations#design", as: :design
  resources :invitations, only: [:show, :update, :create, :destroy]

  get "invitations/:id/attendance_form/:atdform_id" => "attendance_forms#show", as: :attendance_form_show
  patch "invitations/:id/attendance_form/:atdform_id" => "attendance_forms#update", as: :attendance_form_update

  resources :attendances

  resources :account_activations, only: [:edit]

  get "message_cards/:id/profile" => "message_cards#profile", as: :msg_profile
  get "message_cards/:id/preview" => "message_cards#preview", as: :msg_preview
  get "message_cards/:id/greeting" => "message_cards#greeting", as: :msg_greeting
  resources :message_cards, only: [:new, :show, :update, :create, :destroy]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
