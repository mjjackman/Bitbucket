Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :destinations, :only => [:new, :create]
  resources :travellers, :only => [:show] do
    member do
      get 'edit_destination'
      patch 'update_destination'
    end
  end
end
