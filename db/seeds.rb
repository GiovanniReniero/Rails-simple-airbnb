# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



def flat_seed
  24.times do 
    price = (50..150).to_a.sample
    guests = (1..6).to_a.sample
    flat = Flat.new(
      name: Faker::Name.name,  # MUST REMEMBER TO INSTALL FAKER GEM!
      address: Faker::Address.city,
      description: Faker::Lorem.paragraph_by_chars,
      price_per_night: price,
      number_of_guests: guests
      )
      flat.save
      puts "Seeded #{flat.name}, #{flat.address}"
    end
  end
  
  puts "Cleansing Database...."
  Flat.destroy_all
  puts "Database CLEANSED !!!"
  
  puts "Seeding Database....."
  flat_seed
  puts "...successfully seeded #{Flat.count} flats"