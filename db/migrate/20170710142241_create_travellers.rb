class CreateTravellers < ActiveRecord::Migration[5.1]
  def change
    create_table :travellers do |t|
      t.string :name
      t.string :img_url
    end
  end
end
