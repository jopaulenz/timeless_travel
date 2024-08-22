class AddImageUrlToTimeTravels < ActiveRecord::Migration[7.1]
  def change
    add_column :time_travels, :image_url, :string
  end
end
