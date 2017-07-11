class ToDoItemsController < ApplicationController
  def index
  end

  def new
    @todo = ToDoItem.new
  end

  def create
    @destination = Destination.find(params[:destination_id])
    @destination.to_do_items.create(to_do_item)
  end

  private
  def to_do_item
    params.require(:to_do_item).permit(:activity)
  end
end
