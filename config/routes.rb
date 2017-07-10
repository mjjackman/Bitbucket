Rails.application.routes.draw do

  devise_for :travellers
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :travellers, :only => [:show] do
    resources :destinations, :only => [:new, :create] do
    end
  end
end
