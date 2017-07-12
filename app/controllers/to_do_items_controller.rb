class ToDoItemsController < ApplicationController

  def new
    @todo = ToDoItem.new
  end

  def create
    @destination = Destination.find(params[:destination_id])
    @to_do = @destination.to_do_items.new(to_do_item)

    if @to_do.save
      redirect_to destination_path(@destination)
    else
      render 'new'
    end
  end

  private
  def to_do_item
    params.require(:to_do_item).permit(:activity, :location)
  end
end
