Rankit::Engine.routes.draw do
  devise_for :users, :class_name => 'Rankit::User', :module => 'rankit/devise'

  resources :rankables do
    resource :score, :only => [ :edit, :update ]
  end

  root :to => 'rankables#index'
end
