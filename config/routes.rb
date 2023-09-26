Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/about'
  get 'pages/contact'
  post 'pages/contact', to: 'pages#create_message'
end
