class CreateToDoItems < ActiveRecord::Migration[5.1]
  def change
    create_table :to_do_items do |t|
      t.string :activity
      t.integer :destination_id
    end
  end
end
