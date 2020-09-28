class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :city_name
      t.string :country_name
      t.string :continent
      t.timestamps
    end
  end
end
