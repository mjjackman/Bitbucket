class AddInformationToToDoItems < ActiveRecord::Migration[5.1]
  def change
    add_column :to_do_items, :information, :text
  end
end
