Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
   namespace :v1 do
     resources :donors, only: [:show, :create, :edit, :update]
     resources :donations, only: [:create]
     resources :organizations, only: [:index, :show, :create]
     resources :funds, only: [:index]

     post '/donor_sessions/', to: 'sessions#create_donor_sessions', as: 'donor_sessions'
     post '/organization_sessions/', to: 'sessions#create_organization_sessions', as: 'organization_sessions'
   end
 end

end
