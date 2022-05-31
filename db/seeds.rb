# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Garden.destroy_all if Rails.env.development?


little = Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

other = Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

Plant.destroy_all if Rails.env.development?

Plant.create!(
  name: "Palmeira Imperial",
  image_url: "https://www.sitiodamata.com.br/pub/media/catalog/product/cache/02a967fa0e464fd60865ccf512e40f92/p/a/palmeira-imperial-roystonea-oleracea._3nd.jpg",
  garden: little
)

Plant.create!(
  name: "Daisy",
  image_url: "https://www.crodapersonalcare.com/croda_image_downloads.ashx?fn=Personalcare_0_CRODAROM_Phytessence_Blue_Daisy.jpg&mn=personalcare&w=768&xr=0&yr=0&xfp=6&yfp=6&hash=348A113FF812B8C2AEB0AE0577523BC919C138999FEC74AA&t=7",
  garden: other
)

Tag.destroy_all if Rails.env.development?

names = ["Fruit Tree", "Cactus", "Palm", "Flower", "Conifers", "Succulent"]

names.each do |plant|
  Tag.create!(name: plant)
end
