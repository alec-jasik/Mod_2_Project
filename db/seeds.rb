# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rubocop-faker'


Traveler.destroy_all
Destination.destroy_all
Poi.destroy_all
Review.destroy_all
Trip.destroy_all
Wishlist.destroy_all

10.times do
    email = Faker::Internet.email
    password = Faker::Internet.password(min_length: 8)
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    age = rand(18..100)
    Traveler.create(email: email, password: password, first_name: first_name, last_name: last_name, age: age)
end

d1 = Destination.create(city_name: "Paris", country_name: "France", continent: "Europe")
d2 = Destination.create(city_name: "New York City", country_name: "United States of America", continent: "North America")
d3 = Destination.create(city_name: "Rio de Janeiro", country_name: "Brazil", continent: "South America")
d4 = Destination.create(city_name: "Hong Kong", country_name: "China", continent: "Asia")
d5 = Destination.create(city_name: "Cape Town", country_name: "South Africa", continent: "Africa")
d6 = Destination.create(city_name: "Sydney", country_name: "Australia", continent: "Australia")
d7 = Destination.create(city_name: "Rome", country_name: "Italy", continent: "Europe")
d8 = Destination.create(city_name: "Berlin", country_name: "Germany", continent: "Europe")
d9 = Destination.create(city_name: "Las Vegas", country_name: "United States of America", continent: "North America")
d10= Destination.create(city_name: "Tokyo", country_name: "Japan", continent: "Asia")

p1 = Poi.create(destination: d1, name: "Eiffel Tower", description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France.")
p2 = Poi.create(destination: d2, name: "Statue of Liberty", description: "The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor.")
p3 = Poi.create(destination: d3, name: "Christ the Redeemer", description: "Christ the Redeemer is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil.")
p4 = Poi.create(destination: d4, name: "Wong Tai Sin Temple", description: "The Wong Tai Sin Temple is one of the newest in Hong Kong and also one of the most interesting.")
p5 = Poi.create(destination: d5, name: "Chapman's Peak Drive", description: "About 25 kilometers from the city center, Chapman's Peak Drive is one of the most jaw-dropping driving routes in the world.")
p6 = Poi.create(destination: d6, name: "Sydney Opera House", description: "One of the world's great icons, the Sydney Opera House is a UNESCO World Heritage Site and the star attraction on the glittering harbor.")
p7 = Poi.create(destination: d7, name: "The Pantheon", description: "The Pantheon is the best preserved ancient building in Rome and another must-see touristic attraction.")
p8 = Poi.create(destination: d8, name: "The Brandenburg Gate", description: "Berlin's most famous historic landmark is the Brandenburg Gate (Brandenburger Tor), once a symbol of a divided nation and now a symbol of unity and peace.")
p9 = Poi.create(destination: d9, name: "Stratosphere Tower", description: "The Stratosphere Tower is an unmistakable sight on the Las Vegas skyline! The tower rises up 1,149 feet, and on the rooftop of the tower are a variety of heart pounding thrill rides, including the SkyJump, Big Shot, X Scream, and Insanity.")
p10 = Poi.create(destination: d10, name: "Inokashira Park", description: "Tokyo has several great parks in the city center such as Yoyogi Park and Shinjuku Gyoen, but for more chilled and peaceful atmosphere, Inokashira Onshi Park is a perfect place.")



trip1 = Trip.create(traveler: Traveler.all.sample, destination: Destination.all.sample)

