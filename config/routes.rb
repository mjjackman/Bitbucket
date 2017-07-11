Rails.application.routes.draw do
  
  resources :destinations, :only => [:show] do
    resources :to_do_items
  end

end
