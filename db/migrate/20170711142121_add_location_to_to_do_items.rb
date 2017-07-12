class AddLocationToToDoItems < ActiveRecord::Migration[5.1]
  def change
    add_column :to_do_items, :location, :string
  end
end
