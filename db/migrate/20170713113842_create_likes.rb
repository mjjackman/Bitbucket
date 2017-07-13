class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :traveller_id
      t.integer :to_do_item_id

      t.timestamps
    end
  end
end
