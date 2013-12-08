Tao::Application.routes.draw do
  devise_for :users

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root :to => 'users#profile'

  resources :users, :except => [:destroy] do
    member do
      put :assign_my_tasks
    end
  end

  resources :exercises do
    collection do
      get :my
      get :unfinished
    end
  end

  resources :documents, :only => [:index, :show]
  resources :groups, :only => [:index, :show]
  resources :fines
  resources :fund_exchange_activities, :only => [:index, :show]
  resources :user_activities, :only => [:index, :show]
  resources :tasks, :only => [:index, :show] do
    collection do
      get :common
    end
  end
end
