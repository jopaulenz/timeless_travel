class AddPriceToTimeTravels < ActiveRecord::Migration[7.1]
  def change
    add_column :time_travels, :price, :integer
  end
end
