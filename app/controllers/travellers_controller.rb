class TravellersController < ApplicationController

  def show
    @traveller = Traveller.find(params[:id])
    render 'show'
  end

end