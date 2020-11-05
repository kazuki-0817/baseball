Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  root to: "home#index"

  resources :users do
    resources :articles,only: [:index]
  end

  resources :articles
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
