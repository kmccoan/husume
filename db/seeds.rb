# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AdminUser.create!(email: 'kira@example.com', password: 'password', password_confirmation: 'password')

weather = CategoryType.create(name: "Weather")

sun = Category.create(name: "Sun", photoUrl: "sun-icon.png")
sun.category_type = weather
sun.save

rain = Category.create(name: "Rain", photoUrl: "rain-icon.png")
rain.category_type = weather
rain.save

aquarium = rain.activities.create(
	name:"visit the Aquarium",
	photoUrl: "van_aquarium.png",
	link: "http://www.vanaqua.org/",
	lat: 49.300165,
	long: -123.130978)
aquarium.categories << rain
aquarium.save

indoor_climbing = rain.activities.create(
	name:"Indoor Climbing",
	photoUrl: "hive_climbing.png",
	link: "http://www.hiveclimbing.com/",
	lat: 49.261226 ,
	long: -123.113927)
indoor_climbing.categories << rain
indoor_climbing.save

cliff_jumping = sun.activities.create(
	name:"Cliff Jumping",
	photoUrl: "lions_bay_cliff_jump.png",
	link: "http://www.mowgli.ca/zones/lionsbay.html",
	lat: 49.444859,
	long: -123.239501)
cliff_jumping.categories << sun
cliff_jumping.save
