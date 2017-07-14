class HomeController < ApplicationController
  before_action :authenticate_traveller!

  def index
    @destinations = current_traveller.destinations
  end

end