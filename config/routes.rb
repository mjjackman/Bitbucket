Rails.application.routes.draw do

  devise_for :travellers
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :destinations, :only => [:new, :create]

  resources :destinations, :only => [:show, :index, :create] do
    resources :to_do_items
  end

  resources :likes, :only => :create
  resources :to_do_items, :only => [] do
    collection do
      get :fields_for
    end
  end

  resources :travellers, :only => [:show] do
    member do
      get 'edit_destination'
      patch 'update_destination'
    end
  end

end
