Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations'}
  devise_for :freelancers, :employers, :skip => :sessions

  resources :employers
  resources :freelancers
  resources :jobs

  root 'landing#index'
  get 'pages/contact'
  get 'pages/about'
  get 'pages/blogs'

end
