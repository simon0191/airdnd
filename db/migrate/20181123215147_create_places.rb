class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :country
      t.string :city
      t.decimal :price_per_night
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :guests_capacity
      t.references :owner, index: true, foreign_key: { to_table: :users }


      t.timestamps
    end
  end
end
