Rails.application.routes.draw do
  
  resource :destination, :only => [:show] do
    resource :todoitem, :only => [:new]
  end

end
