Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  root to: "home#index"

  resources :users 

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
