class DestinationsController < ApplicationController
  
  def new
    @destination = Destination.new
  end

  def create
   # binding.pry
    @traveller = Traveller.find(params[:traveller_id])
    @destination = @traveller.destinations.new(traveller_destination_params)
    if @destination.save
      redirect_to url_for(traveller_path(params[:traveller_id]))
    else
      flash[:message] = "Didn't work..."
      render(:new)
    end
  end

  private

  def traveller_destination_params
      params.require(:traveller_destination).permit(:destination_id)
   end

  # def find_provider_id
  #   @provider = Provider.find(params[:provider_id])
  # end

  # def find_id
  #  @offering = Offering.find(params[:id])
  # end


end