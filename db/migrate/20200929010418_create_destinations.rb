class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.string :photo

      t.timestamps
    end
  end
end
