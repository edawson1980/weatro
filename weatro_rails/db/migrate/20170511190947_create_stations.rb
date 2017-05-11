class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :locationCode
      t.string :state
      t.string :city
      t.string :name
      t.string :address
      t.string :photo_url

      t.timestamps
    end
  end
end
