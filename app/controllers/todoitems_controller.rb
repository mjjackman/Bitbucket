class TodoitemsController < ApplicationController

  def new
    @todo = ToDoItem.new
  end

end