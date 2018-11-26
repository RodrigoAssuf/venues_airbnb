class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.references :user, foreign_key: true
      t.string :category
      t.integer :price
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
