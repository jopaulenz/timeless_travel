class AddCityToTimeTravels < ActiveRecord::Migration[7.1]
  def change
    add_column :time_travels, :city, :string
  end
end
