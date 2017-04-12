Rails.application.routes.draw do
  resources :fasteners
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #devise_scope :user do
  #  root to: 'devise/sessions#new'
  #end

  root to: 'fasteners#index'
  
end
