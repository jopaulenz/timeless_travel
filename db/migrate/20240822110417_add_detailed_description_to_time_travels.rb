class AddDetailedDescriptionToTimeTravels < ActiveRecord::Migration[7.1]
  def change
    add_column :time_travels, :detailed_description, :text
  end
end
