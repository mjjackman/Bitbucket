class TravellersController < ApplicationController
before_action :authenticate_traveller!
  def show
   # binding.pry
    @traveller = Traveller.find(params[:id])
    @destinations = @traveller.destinations.all
    render 'show'
  end

end