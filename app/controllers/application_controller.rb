class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_traveller
    Traveller.find(session["warden.user.traveller.key"][0][0])
  end

end
