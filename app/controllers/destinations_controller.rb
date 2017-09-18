pclass DestinationsController < ApplicationController

  def show
    @destination = Destination.find(params[:id])
  end

  def index
    @destinations = current_traveller.destinations.joins(:to_do_items).
    where("latitude < ? AND latitude > ? AND longitude < ? AND longitude > ?", params[:north], params[:south], params[:east], params[:west])
  end

  def create
    @dest = Destination.create!(destination_params)
    @destinations = Destination.all
  end

  private
    def destination_params
      params.require(:destination).permit(:name, :to_do_items_attributes => [:location, :activity])
    end
end
