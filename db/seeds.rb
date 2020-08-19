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
  {name: "Wild Bill", make: "Halberg Rassy", length: "34ft", address: "Falmouth, UK", location_country: "UK", location_marina: "Falmouth", daily_price: 90, sleeps: 4, year_built: 2000, boat_type: "yacht", image_url: "https://www.hallberg-rassy.com/fileadmin/user_upload/Images-boats-slider/Boats/HR34/HR34SillebyssanIntro1.jpg"},
  {name: "Big Nauti", make: "Halberg Rassy", length: "39ft", address: "Falmouth, UK", location_country: "UK", location_marina: "Falmouth", daily_price: 120, sleeps: 6, year_built: 2006, boat_type: "yacht", image_url: "https://gettingfr.ee/content/images/2018/12/daa_0149_42877351320_o.jpg"},
  {name: "Corona", make: "Halberg Rassy", length: "34ft", address: "Palma, Spain", location_country: "Spain", location_marina: "Palma", daily_price: 85, sleeps: 4, year_built: 2005, boat_type: "yacht", image_url: "https://www.hallberg-rassy.com/fileadmin/user_upload/Images-boats-slider/Boats/HR34/HR34sailingIntro1.jpg"},
  {name: "Second Glance", make: "Halberg Rassy", length: "39ft", address: "Palma, Spain", location_country: "Spain", location_marina: "Palma", daily_price: 111, sleeps: 6, year_built: 1999, boat_type: "yacht", image_url: "https://www.hallberg-rassy.com/fileadmin/gallery/161129083331_HR39MkIISailing3.jpg"},
  {name: "Insufferable", make: "Swan", length: "59ft", address: "Falmouth, UK", location_country: "UK", location_marina: "Falmouth", daily_price: 185, sleeps: 6, year_built: 2000, boat_type: "yacht", image_url: "https://images.yachtworld.com/resize/1/24/85/6302485_20170717090227347_1_XLARGE.jpg?f=/1/24/85/6302485_20170717090227347_1_XLARGE.jpg&w=924&h=693&t=1500365916000"},
  {name: "Knight Of The Caribbean", make: "Swan", length: "46ft", address: "Falmouth, UK", location_country: "UK", location_marina: "Falmouth", daily_price: 132, sleeps: 6, year_built: 2009, boat_type: "yacht", image_url: "https://www.yeomanyachts.com/media/k2/items/cache/600eb6612b31632f6c618c9c012d873d_S.jpg"},
  {name: "Lucifer", make: "Swan", length: "59ft", address: "Palma, Spain", location_country: "Spain", location_marina: "Palma", daily_price: 171, sleeps: 6, year_built: 2008, boat_type: "yacht", image_url: "https://www.nautorswan.com/w1/wp-content/uploads/2019/09/swan54-2019-1.jpg"},
  {name: "Rock Bottom", make: "Swan", length: "46ft", address: "Palma, Spain", location_country: "Spain", location_marina: "Palma", daily_price: 129, sleeps: 6, year_built: 2011, boat_type: "yacht", image_url: "https://www.yachtscroatia.com/wp-content/uploads/2020/04/swan48-sailing-side-view-02.jpg"},
  {name: "Salty Dog", make: "Sunseeker", length: "62ft", address: "Falmouth, UK", location_country: "UK", location_marina: "Falmouth", daily_price: 185, sleeps: 6, year_built: 2011, boat_type: "powerboat", image_url: "https://www.sunseeker.com/wp-content/uploads/2017/08/76_p-montage_1_verII_1-1280x840.jpg"},
  {name: "Water Horse", make: "Sunseeker", length: "43ft", address: "Falmouth, UK", location_country: "UK", location_marina: "Falmouth", daily_price: 132, sleeps: 6, year_built: 2009, boat_type: "powerboat", image_url: "https://www.sunseeker.com/wp-content/uploads/2019/12/68-yacht-1-1280x840.jpg"},
  {name: "Hot Flash", make: "Sunseeker", length: "62ft", address: "Palma, Spain", location_country: "Spain", location_marina: "Palma", daily_price: 171, sleeps: 6, year_built: 2008, boat_type: "powerboat", image_url: "https://d2qh54gyqi6t5f.cloudfront.net/boat_images/10/10508/10508472/sunseeker-predator-62-2008-for-sale-antibes-france-001.jpg"},
  {name: "Miss Conduct", make: "Sunseeker", length: "43ft", address: "Palma, Spain", location_country: "Spain", location_marina: "Palma", daily_price: 129, sleeps: 6, year_built: 1997, boat_type: "powerboat", image_url: "https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/18/2019/03/sunseeker-predator-50-boat-test-running-shot-hero-credit-richard-langdon.jpg"},
]


boats.each do |attributes|
  boat = Boat.new(attributes)
  boat.user = users_array.sample
  boat.save!
  puts "Created #{boat.name}"
  puts "belongs to #{boat.user.email}"
end

puts "Finished!"
