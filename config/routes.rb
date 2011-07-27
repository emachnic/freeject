Freeject::Application.routes.draw do
  match "dashboard", :to => "pages#dashboard"
  devise_for :users
  resources :projects do
    resources :stories
  end
  root :to => "pages#index"
end
