class AddCoordinatesToTimeTravels < ActiveRecord::Migration[7.1]
  def change
    add_column :time_travels, :latitude, :float
    add_column :time_travels, :longitude, :float
  end
end
