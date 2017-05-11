# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Station.destroy_all
Vote.destroy_all


Station.create(
  locationCode: "A15",
  city: "Rockville",
  state: "MD",
  name: "Shady Grove",
  address: "15903 Somerville Drive",
  photo_url: " "
  )

  Vote.create(score: "1", station_id: 1)
