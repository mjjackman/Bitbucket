Rails.application.routes.draw do
  
  resources :destinations, :only => [:show] do
    resources :to_do_items
  end
  resources :travellers, :only => [:show] do
    member do
      get 'edit_destination'
      patch 'update_destination'
    end
  end

end
