class CreateTravelers < ActiveRecord::Migration[6.0]
  def change
    create_table :travelers do |t|
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.timestamps
    end
  end
end
