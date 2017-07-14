class LikesController < ApplicationController

  def create
    @like = Like.create!(:traveller_id => params[:traveller_id], :to_do_item_id => params[:to_do_item_id])
  end

end
