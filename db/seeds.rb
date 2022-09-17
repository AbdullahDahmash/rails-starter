# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  {
    name: "Princess Norah University",
    image_location: "lib/assets/pnu.jpg",
    location: RGeo::Geographic.simple_mercator_factory.point(46.7233299,24.8466575).projection,
  },
  {
    name: "King Saud University",
    image_location: "lib/assets/ksu.jpg",
    location: RGeo::Geographic.simple_mercator_factory.point(46.6214709,24.7252026).projection,
  },
  {
    name: "Imam Mohammad Ibn Saud Islamic University",
    image_location: "lib/assets/imamu.jpg",
    location: RGeo::Geographic.simple_mercator_factory.point(46.6857415,24.8136715).projection,
  },
].each do |record|
  image_location = record.delete(:image_location)
  destination = Destination.create record
  destination.image.attach(io: File.open(File.join(Rails.root, image_location)), filename: image_location.split("/")[-1])
end
