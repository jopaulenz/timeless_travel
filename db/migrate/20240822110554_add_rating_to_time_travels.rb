class AddRatingToTimeTravels < ActiveRecord::Migration[7.1]
  def change
    add_column :time_travels, :rating, :float
  end
end
