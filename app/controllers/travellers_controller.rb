class TravellersController < ApplicationController

  def show
    @traveller = Traveller.find(params[:id])
    @traveller.destinations.new
  end

  def edit_destination
    @traveller = current_traveller
    @destination = @traveller.destinations.new
  end

  def update_destination
    @traveller = current_traveller
    @traveller.destinations.create(traveller_destination_params)
  end


  private
  def traveller_destination_params
      params.require(:traveller).permit(destination_attributes: [:id])
   end
end