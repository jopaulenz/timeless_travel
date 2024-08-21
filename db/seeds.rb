# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
10.times do
  TimeTravels.create!(
    name: Faker::Name.name, # Verwende Faker::Name.name falls Faker::HistoricalFigure.name nicht funktioniert
    description: Faker::Lorem.paragraph,
    period: Faker::Date.between(from: '1300-01-01', to: '2000-01-01').strftime("%B %Y")
  )
end
