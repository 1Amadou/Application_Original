Rails.application.routes.draw do
  root to: 'pages#presentation'
  devise_for :users
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end
  namespace :admin do
    resources :todo_lists 
    
  end
  
  get 'admin/dashboard', to: 'admin#dashboard', as: :admin_dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
