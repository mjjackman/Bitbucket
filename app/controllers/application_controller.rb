class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
   traveller_path(@traveller) 
  end 

  def current_traveller
    Traveller.find(session["warden.user.traveller.key"][0][0])
  end
end
