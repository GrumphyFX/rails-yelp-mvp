# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
restaurants = [
    {
      name: "Epicure",
      address: "75008 Paris",
      phone_number: "01 43 54 23 31",
      category: "french"
    },
    {
      name: "La truffière",
      address: "4 rue Blainville 75005 Paris",
      phone_number: "01 46 33 29 82",
      category: "french"
    },
    {
      name: "Le pré catelan",
      address: "route de Suresnes 75016 Paris",
      phone_number: "01 44 14 41 14",
      category: "french"
    },
    {
      name: "Gaggan",
      address: "68/1 Soi Langsuan, Ploenchit Road, Lumpini, Bangkok 10330",
      phone_number: "02 652 1700",
      category: "indian"
    },
    {
      name: "Ishikawa",
      address: "5-37 Kagurazaka, Shinjuku-ku, Tokyo",
      phone_number: "+81 3-5225-0173",
      category: "japanese"
    }
  ]
  
  restaurants.each do |attributes|
    restaurant = Restaurant.create!(attributes)
    puts "Created #{restaurant.name}"
  end