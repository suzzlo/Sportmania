Sportmania::Application.routes.draw do
  resources :championships

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end