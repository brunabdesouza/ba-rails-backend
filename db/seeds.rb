# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


print "Creating airplanes..."

Airplane.destroy_all

airplane1 = Airplane.create! name:'A380', row: 1, column:'A'
airplane2 = Airplane.create! name:'737', row: 2, column: 'B'
airplane3 = Airplane.create! name:'747-8', row: 3, column: 'C'
airplane4 = Airplane.create! name:'777', row: 4, column: 'D'

puts "created #{Airplane.count} airplanes."

print "Creating flights..."

Flight.destroy_all

flight1 = Flight.create! number: 27, origin: 'Sydney', destination: 'Melbourne'
flight2 = Flight.create! number: 84, origin: 'Brisbane', destination: 'Adelaide'
flight3 = Flight.create! number: 45, origin: 'Melbourne', destination: 'Tasmania'
flight4 = Flight.create! number: 27, origin: 'Tasmania', destination: 'Sydney'

puts "created #{Flight.count} flights."

airplane1.flights << flight1
airplane2.flights << flight2
airplane3.flights << flight3
airplane4.flights << flight4

puts "Testing airplanes -< flights associations:"
puts "The flight #{Flight.first.number} belongs to the airplane #{Airplane.first.name}"

print "Creating Users..."

User.destroy_all

user1 = User.create! name: 'Bruna', email: 'bruna@burned.com'
user1 = User.create! name: 'Andy', email: 'andy@burned.com'
user1 = User.create! name: 'Sam', email: 'sam@burned.com'
user1 = User.create! name: 'Zara', email: 'zara@burned.com'

puts "Created #{User.count} users."


print "Creating reservations... "

Reservation.destroy_all

reservation1 = Reservation.create! row: 1, column: 'A'
reservation2 = Reservation.create! row: 2, column: 'B'
reservation3 = Reservation.create! row: 3, column: 'C'
reservation4 = Reservation.create! row: 4, column: 'D'


user1.reservations << reservation1
user2.reservations << reservation2
user3.reservations << reservation3
user4.reservations << reservation4

flight1.users << user1
flight2.users << user2
flight3.users << user3
flight4.users << user4
