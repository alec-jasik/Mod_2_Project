class CreateWishlists < ActiveRecord::Migration[6.0]
  def change
    create_table :wishlists do |t|
      t.integer :traveler_id
      t.integer :destination_id
      t.timestamps
    end
  end
end
