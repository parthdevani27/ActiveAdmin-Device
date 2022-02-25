Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/home'
  devise_for :users
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  #cms management system
  get "/cms",to: "pages#index"
  get "/cms/:slug",to: "pages#pages"
end
