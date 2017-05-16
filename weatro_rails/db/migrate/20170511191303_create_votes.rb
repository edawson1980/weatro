class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.string :score
      t.string :name
      t.references :station

      t.timestamps
    end
  end
end
