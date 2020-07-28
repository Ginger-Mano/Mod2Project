class CreateRestaurantReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_reservations do |t|
      t.integer :party_size
      t.string :restaurant_name
      t.string :date
      t.string :time
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
