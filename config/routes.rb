Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :travellers, :only => [:show] do
    resources :destinations, :only => [:new, :create]
  end
  resources :travellers, :only => [:show]
end
