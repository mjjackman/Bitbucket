class CreateTravellerDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :traveller_destinations do |t|
      t.references :traveller
      t.references :destination
    end
  end
end
