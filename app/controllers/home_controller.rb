class HomeController < ApplicationController
  before_action :authenticate_traveller!

  def index
    @destinations = current_traveller.destinations
    @destination = Destination.new
  end

  

end