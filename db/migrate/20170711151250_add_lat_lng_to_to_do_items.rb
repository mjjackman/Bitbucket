class AddLatLngToToDoItems < ActiveRecord::Migration[5.1]
  def change
    add_column :to_do_items, :latitude, :float
    add_column :to_do_items, :longitude, :float
  end
end
