class TravellersController < ApplicationController
before_action :authenticate_traveller!

  def show
    @traveller = Traveller.find(params[:id])
    @traveller.destinations.new
  end

  def edit_destination
    @traveller = current_traveller
    @traveller.traveller_destinations.build
  end

  def update_destination
    @traveller = current_traveller
    @traveller.update(traveller_destination_params)
  end


  private
  def traveller_destination_params
      params.require(:traveller).permit(traveller_destinations_attributes: [:destination_id])
   end
end