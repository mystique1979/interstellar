# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all #to empty table products before seeding
Product.create(name: 'Alpha Centauri', description: 'AKA <b>Rigel Kent</b> is the brightest star in the southern constellation of Centaurus, it is currently inside the G-cloud.',
location: 'Constellation: Centaurus', price: '1.00',image_url:'http://en.es-static.us/upl/2009/06/Alpha_Centauri_-MSX_IPAC_NASA_cropped-300x214.jpg')
Product.create(name: 'Proxima Centauri', description: 'Latin proxima, meaning "next to" or "nearest to")[12] is a red dwarf star about 4.24 light-years distant inside the G-cloud in the constellation of Centaurus',
location: 'Constellation: Centaurus', price: '1.00')

# name:string description:text location:string price:decimal image_url:string user:integer
