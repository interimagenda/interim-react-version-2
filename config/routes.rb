Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations'}
  devise_for :freelancers, :employers, :skip => :sessions

  resources :employers
  resources :freelancers
  resources :jobs

  root 'pages#landing'
  get 'contact' => 'pages#contact', as: 'contact'
  get 'about' => 'pages#about', as: 'about'
  get 'blogs' => 'pages#blogs', as: 'blogs'

end
