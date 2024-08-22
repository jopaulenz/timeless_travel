# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

time_travels = [
  {
    name: "Socrates in Athens",
    city: "Athens",
    period: "470–399 B.C.",
    latitude: 37.9838,
    longitude: 23.7275,
    description: "Explore the life and philosophy of Socrates in ancient Athens.",
    detailed_description: "Discover the profound teachings of Socrates, his method of questioning, and his influence on Western philosophy.",
    price: 3000,
    rating: 4.9,
    image_url: "https://source.unsplash.com/600x400/?athens"
  },
  {
    name: "Julius Caesar in Rome",
    city: "Rome",
    period: "100–44 B.C.",
    latitude: 41.9028,
    longitude: 12.4964,
    description: "Witness the rise of Julius Caesar in the heart of the Roman Empire.",
    detailed_description: "Experience the political maneuvers, military campaigns, and the eventual assassination that marked Caesar's life.",
    price: 3200,
    rating: 4.8,
    image_url: "https://source.unsplash.com/600x400/?rome"
  },
  {
    name: "Confucius in Qufu",
    city: "Qufu",
    period: "551–479 B.C.",
    latitude: 35.5960,
    longitude: 116.9919,
    description: "Learn the teachings of Confucius in ancient China.",
    detailed_description: "Understand Confucius' philosophy on ethics, family, and governance that shaped Chinese culture.",
    price: 2900,
    rating: 4.7,
    image_url: "https://source.unsplash.com/600x400/?qufu"
  },
  {
    name: "Al-Farabi in Baghdad",
    city: "Baghdad",
    period: "872–950 A.D.",
    latitude: 33.3152,
    longitude: 44.3661,
    description: "Dive into the intellectual world of Al-Farabi in the Islamic Golden Age.",
    detailed_description: "Explore the philosophical and scientific advancements during the Abbasid Caliphate.",
    price: 3100,
    rating: 4.8,
    image_url: "https://source.unsplash.com/600x400/?baghdad"
  },
  {
    name: "Leonardo da Vinci in Florence",
    city: "Florence",
    period: "1452–1519 A.D.",
    latitude: 43.7696,
    longitude: 11.2558,
    description: "Discover the genius of Leonardo da Vinci during the Italian Renaissance.",
    detailed_description: "Witness da Vinci's works in art, science, and engineering in the vibrant city of Florence.",
    price: 3500,
    rating: 5.0,
    image_url: "https://source.unsplash.com/600x400/?florence"
  },
  {
    name: "Rumi in Konya",
    city: "Konya",
    period: "1207–1273 A.D.",
    latitude: 37.8714,
    longitude: 32.4849,
    description: "Experience the spiritual journey of Rumi in medieval Konya.",
    detailed_description: "Understand Rumi's poetry and spiritual teachings that continue to inspire millions.",
    price: 2800,
    rating: 4.9,
    image_url: "https://source.unsplash.com/600x400/?konya"
  },
  {
    name: "Genghis Khan in Karakorum",
    city: "Karakorum",
    period: "1162–1227 A.D.",
    latitude: 47.2044,
    longitude: 102.8486,
    description: "Join Genghis Khan in the Mongol Empire's ancient capital.",
    detailed_description: "Learn about the military strategies and governance that led to the rise of the largest contiguous empire in history.",
    price: 3300,
    rating: 4.7,
    image_url: "https://source.unsplash.com/600x400/?mongolia"
  },
  {
    name: "Thomas Jefferson in Philadelphia",
    city: "Philadelphia",
    period: "1743–1826 A.D.",
    latitude: 39.9526,
    longitude: -75.1652,
    description: "Engage with Thomas Jefferson during the American Revolution.",
    detailed_description: "Explore Jefferson's role in drafting the Declaration of Independence and his vision for the United States.",
    price: 3600,
    rating: 4.8,
    image_url: "https://source.unsplash.com/600x400/?philadelphia"
  },
  {
    name: "Ibn Sina in Bukhara",
    city: "Bukhara",
    period: "980–1037 A.D.",
    latitude: 39.7767,
    longitude: 64.4150,
    description: "Study the medical and philosophical works of Ibn Sina in medieval Bukhara.",
    detailed_description: "Delve into the contributions of Ibn Sina, known in the West as Avicenna, to medicine and philosophy.",
    price: 3200,
    rating: 4.9,
    image_url: "https://source.unsplash.com/600x400/?bukhara"
  },
  {
    name: "William Shakespeare in London",
    city: "London",
    period: "1564–1616 A.D.",
    latitude: 51.5074,
    longitude: -0.1278,
    description: "Experience the world of William Shakespeare in Elizabethan London.",
    detailed_description: "See Shakespeare's plays performed at the Globe Theatre and explore his influence on English literature.",
    price: 3400,
    rating: 5.0,
    image_url: "https://source.unsplash.com/600x400/?london"
  },
  {
    name: "Akbar the Great in Agra",
    city: "Agra",
    period: "1542–1605 A.D.",
    latitude: 27.1767,
    longitude: 78.0081,
    description: "Witness the reign of Akbar the Great in Mughal India.",
    detailed_description: "Learn about Akbar's policies of religious tolerance and his efforts to consolidate the Mughal Empire.",
    price: 3100,
    rating: 4.7,
    image_url: "https://source.unsplash.com/600x400/?agra"
  },
  {
    name: "Suleiman the Magnificent in Istanbul",
    city: "Istanbul",
    period: "1494–1566 A.D.",
    latitude: 41.0082,
    longitude: 28.9784,
    description: "Explore the Ottoman Empire under Suleiman the Magnificent in Istanbul.",
    detailed_description: "Understand Suleiman's military conquests, legal reforms, and cultural patronage that marked the Ottoman golden age.",
    price: 3300,
    rating: 4.8,
    image_url: "https://source.unsplash.com/600x400/?istanbul"
  },
  {
    name: "Sun Yat-sen in Guangzhou",
    city: "Guangzhou",
    period: "1866–1925 A.D.",
    latitude: 23.1291,
    longitude: 113.2644,
    description: "Join Sun Yat-sen in the Chinese Revolution.",
    detailed_description: "Explore Sun Yat-sen's efforts to overthrow the Qing Dynasty and establish the Republic of China.",
    price: 3000,
    rating: 4.8,
    image_url: "https://source.unsplash.com/600x400/?guangzhou"
  },
  {
    name: "George Washington in Mount Vernon",
    city: "Mount Vernon",
    period: "1732–1799 A.D.",
    latitude: 38.7073,
    longitude: -77.0861,
    description: "Visit George Washington's estate during the early years of the United States.",
    detailed_description: "Learn about Washington's leadership during the American Revolution and his role as the first President.",
    price: 3700,
    rating: 4.9,
    image_url: "https://source.unsplash.com/600x400/?mountvernon"
  },
  {
    name: "Tokugawa Ieyasu in Edo",
    city: "Tokyo",
    period: "1543–1616 A.D.",
    latitude: 35.6895,
    longitude: 139.6917,
    description: "Experience the Tokugawa shogunate under Ieyasu in Edo, Japan.",
    detailed_description: "Discover how Tokugawa Ieyasu established the shogunate and ushered in an era of peace and stability.",
    price: 3400,
    rating: 4.7,
    image_url: "https://source.unsplash.com/600x400/?tokyo"
  }
]

time_travels.each do |travel|
  TimeTravels.create!(
    name: travel[:name],
    city: travel[:city],
    period: travel[:period],
    latitude: travel[:latitude],
    longitude: travel[:longitude],
    description: travel[:description],
    detailed_description: travel[:detailed_description],
    price: travel[:price],
    rating: travel[:rating],
    image_url: travel[:image_url]
  )
end

10.times do
  TimeTravels.create!(
    name: Faker::Name.name, # Verwende Faker::Name.name falls Faker::HistoricalFigure.name nicht funktioniert
    description: Faker::Lorem.paragraph,
    period: Faker::Date.between(from: '1300-01-01', to: '2000-01-01').strftime("%B %Y")

  )
end
