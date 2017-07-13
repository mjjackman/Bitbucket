class AddPriorityToToDoItems < ActiveRecord::Migration[5.1]
  def change
    add_column :to_do_items, :priority, :integer
  end
end
