class CreateTimeTravels < ActiveRecord::Migration[7.1]
  def change
    create_table :time_travels do |t|
      t.string :name
      t.text :description
      t.string :period

      t.timestamps
    end
  end
end
