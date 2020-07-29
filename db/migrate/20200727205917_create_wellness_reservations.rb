class CreateWellnessReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :wellness_reservations do |t|
      t.integer :group_size
      t.string :wellnesscenter_name
      t.string :date
      t.string :time
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :wellness_center, null: false, foreign_key: true

      t.timestamps
    end
  end
end
