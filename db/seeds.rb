# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

ufo = Ufo.create(name: 'UFO 1', description: 'This is a UFO', status: 'Active')

# Create a sighting
sighting = Sighting.create(ufo_id: 1, date: '2021-01-01', time: '12:00:00')

Coordinate.create(lat: 45.78722, long: -87.39472, sighting_id: 1)
Coordinate.create(lat: 45.78722, long: -85.60527, sighting_id: 1)
Coordinate.create(lat: 44.53944, long: -85.62472, sighting_id: 1)
Coordinate.create(lat: 44.53944, long: -87.37527, sighting_id: 1)
