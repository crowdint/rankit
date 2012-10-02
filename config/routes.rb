Rankit::Engine.routes.draw do
  devise_for :users, :class_name => 'Rankit::User', :module => 'rankit/devise'

  resources :rankables

  root :to => 'rankables#index'
end
