Freeject::Application.routes.draw do
  match "dashboard", to: "pages#dashboard"
  devise_for :users
  resources :projects
  root :to => "pages#index"
end
