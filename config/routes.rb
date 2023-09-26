Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/about'
  # get 'pages/contact'
  get 'pages/contact', to: 'pages#contact', as: 'pages_contact'
end
