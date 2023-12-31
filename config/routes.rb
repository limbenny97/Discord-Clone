Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'
  
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy, :show]
    resources :friends, only: [:create, :show, :destroy, :index]
    resources :channels, only: [:create, :show, :destroy, :index]
    resources :servers
  end

end
