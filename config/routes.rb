Rails.application.routes.draw do
  devise_for :users, controllers:{ registrations: "users/registrations" }
  resources :users do
    collection do
      get 'dashboard'
    end
  end
  put 'admin/:id' => 'users#make_admin', :as => "make_admin"
  delete 'admin/:id' => 'users#delete_admin', :as => "delete_admin"
    
  resources :stories
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
