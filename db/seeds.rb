# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Boat.destroy_all
User.destroy_all



puts "Creating users..."

cook = {email: "capncook@seashanties.com", first_name: "Captain James", last_name: "Cook", password: "123456"}
nelson = {email: "bigboypantsnelson@thenavy.com", first_name: "Horatio", last_name: "Nelson", password: "123456"}
drake = {email: "giantsquidman@drakeenterprises.com", first_name: "Francis", last_name: "Drake", password: "123456"}

[ cook, nelson, drake ].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.email}"
end

p User.all

users_array = User.all

puts "Creating boats..."

boats = [
  {name: "Wild Bill", make: "Halberg Rassy", length: "34ft", address: "Falmouth, UK", location_country: "UK", location_marina: "Falmouth", daily_price: 90, sleeps: 4, year_built: 2000, boat_type: "monohull", image_url: "https://images.unsplash.com/photo-1594454485429-23cc2792fe0c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"},
  {name: "Big Nauti", make: "Halberg Rassy", length: "39ft", address: "Falmouth, UK", location_country: "UK", location_marina: "Falmouth", daily_price: 120, sleeps: 6, year_built: 2006, boat_type: "monohull", image_url: "https://images.unsplash.com/photo-1572529288430-b883658fd0e2?ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80"},
  {name: "Corona", make: "Halberg Rassy", length: "34ft", address: "Palma, Spain", location_country: "Spain", location_marina: "Palma", daily_price: 85, sleeps: 4, year_built: 2005, boat_type: "monohull", image_url: "https://images.unsplash.com/photo-1577032064478-9a60156b0c98?ixlib=rb-1.2.1&auto=format&fit=crop&w=975&q=80"},
  {name: "Second Glance", make: "Halberg Rassy", length: "39ft", address: "Palma, Spain", location_country: "Spain", location_marina: "Palma", daily_price: 111, sleeps: 6, year_built: 1999, boat_type: "monohull", image_url: "https://images.unsplash.com/photo-1584158608392-4094e2f7793c?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80"},
  {name: "Insufferable", make: "Swan", length: "59ft", address: "Falmouth, UK", location_country: "UK", location_marina: "Falmouth", daily_price: 185, sleeps: 6, year_built: 2000, boat_type: "monohull", image_url: "https://images.unsplash.com/photo-1540946485063-a40da27545f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"},
  {name: "Knight Of The Caribbean", make: "Swan", length: "46ft", address: "Falmouth, UK", location_country: "UK", location_marina: "Falmouth", daily_price: 132, sleeps: 6, year_built: 2009, boat_type: "catamaran", image_url: "https://images.unsplash.com/photo-1523064557429-565468be65c6?ixlib=rb-1.2.1&auto=format&fit=crop&w=891&q=80"},
  {name: "Lucifer", make: "Swan", length: "59ft", address: "Palma, Spain", location_country: "Spain", location_marina: "Palma", daily_price: 171, sleeps: 6, year_built: 2008, boat_type: "yacht", image_url: "https://images.unsplash.com/photo-1567899378494-47b22a2ae96a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"},
  {name: "Rock Bottom", make: "Swan", length: "46ft", address: "Palma, Spain", location_country: "Spain", location_marina: "Palma", daily_price: 129, sleeps: 6, year_built: 2011, boat_type: "yacht", image_url: "https://images.unsplash.com/photo-1592437111271-239fa8dcb401?ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80"},
  {name: "Salty Dog", make: "Sunseeker", length: "62ft", address: "Falmouth, UK", location_country: "UK", location_marina: "Falmouth", daily_price: 185, sleeps: 6, year_built: 2011, boat_type: "yacht", image_url: "https://images.unsplash.com/photo-1569263979104-865ab7cd8d13?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1053&q=80"},
  {name: "Water Horse", make: "Sunseeker", length: "43ft", address: "Falmouth, UK", location_country: "UK", location_marina: "Falmouth", daily_price: 132, sleeps: 6, year_built: 2009, boat_type: "monohull", image_url: "https://images.unsplash.com/photo-1575978867961-bb766702b03a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1087&q=80"},
  {name: "Hot Flash", make: "Sunseeker", length: "62ft", address: "Palma, Spain", location_country: "Spain", location_marina: "Palma", daily_price: 171, sleeps: 6, year_built: 2008, boat_type: "yacht", image_url: "https://images.unsplash.com/photo-1589060181082-083883ffe19d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"},
  {name: "Miss Conduct", make: "Lepoard", length: "43ft", address: "Palma, Spain", location_country: "Spain", location_marina: "Palma", daily_price: 400, sleeps: 6, year_built: 2010, boat_type: "catamaran", image_url: "https://images.unsplash.com/photo-1581271164789-7c97932822d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"},
]


boats.each do |attributes|
  boat = Boat.new(attributes)
  boat.user = users_array.sample
  boat.save!
  puts "Created #{boat.name}"
  puts "belongs to #{boat.user.email}"
end

puts "Finished!"
