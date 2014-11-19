Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root to: 'finder#index'
  
  get 'alphabetized' => 'finder#alphabetized', as: 'alphabetized'
  get 'missing_email' => 'finder#missing_email', as: 'missing_email'
end
