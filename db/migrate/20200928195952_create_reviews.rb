class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :traveler_id
      t.integer :poi_id
      t.string :description
      t.integer :rating
      t.timestamps
    end
  end
end
