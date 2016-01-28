# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Pilot.create({
  first_name: 'Valentina',
  last_name: 'Grizodubova',
  missions: 'none',
  aeronautical_rating: 'Polkovnik',
  country: 'Russian Empire',
  url: 'https://upload.wikimedia.org/wikipedia/commons/a/a6/Valentina_Grizodubova.jpg'
})
