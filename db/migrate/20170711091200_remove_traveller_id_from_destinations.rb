class RemoveTravellerIdFromDestinations < ActiveRecord::Migration[5.1]
  def change
    remove_column :destinations, :traveller_id
  end
end
