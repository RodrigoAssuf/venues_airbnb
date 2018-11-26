class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :venue, foreign_key: true
      t.references :user, foreign_key: true
      t.date :initial_date
      t.date :final_date
      t.integer :price

      t.timestamps
    end
  end
end
