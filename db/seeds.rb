# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

weather = CategoryType.create(name: "Weather")

rain = weather.categories.create(name: "Rain", photoUrl: "rain-icon.png")

aquarium = rain.activities.create(
	name:"visit the Aquarium",
	photoUrl: "van_aquarium.png",
	link: "http://www.vanaqua.org/",
	lat: 49.300165,
	long: -123.130978)

indoor_climbing = rain.activities.create(
	name:"Indoor Climbing",
	photoUrl: "hive_climbing.png",
	link: "http://www.hiveclimbing.com/",
	lat: 49.261226 ,
	long: -123.113927)

sun = weather.categories.create(name: "Sun", photoUrl: "sun-icon.png")

cliff_jumping = sun.activities.create(
	name:"Cliff Jumping",
	photoUrl: "lions_bay_cliff_jump.png",
	link: "http://www.mowgli.ca/zones/lionsbay.html",
	lat: 49.444859,
	long: -123.239501)
