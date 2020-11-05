Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  root to: "home#index"

  get "bad_request"=>"home#bad_request"
  get "forbidden" => "home#forbidden"
  get "internal_server_error" => "home#internal_server_error"

  resources :users do
    resources :articles,only: [:index]
  end

  resources :teams do
    resources :users, only: [:index]
  end
  resources :teams do
    resources :articles, only: [:index]
  end


  resources :articles
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
