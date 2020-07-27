class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :bio
      t.string :address
      t.string :url
      t.string :review
      t.integer :avg_rating

      t.timestamps
    end
  end
end
