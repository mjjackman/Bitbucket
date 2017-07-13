class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.integer :traveller_id
    end
  end
end
