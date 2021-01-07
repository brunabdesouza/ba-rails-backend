# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

print "Creating Users..."

User.destroy_all

user1 = User.create! name: 'Bruna', email: 'bruna@burned.com'
user2 = User.create! name: 'Andy', email: 'andy@burned.com'
user3 = User.create! name: 'Sam', email: 'sam@burned.com'
user4 = User.create! name: 'Zara', email: 'zara@burned.com'

puts "Created #{User.count} users."

print "Creating airplanes..."

Airplane.destroy_all

airplane1 = Airplane.create! name:'A380', rows: 40, columns: 10
airplane2 = Airplane.create! name:'737', rows: 30, columns: 6
airplane3 = Airplane.create! name:'747-8', rows: 35, columns: 10
airplane4 = Airplane.create! name:'777', rows: 28, columns: 9

puts "created #{Airplane.count} airplanes."

print "Creating flights..."

Flight.destroy_all

flight1 = Flight.create! number: 27, origin: 'Sydney', destination: 'Melbourne', date: 2021_05_12, airplane_id: airplane1.id
flight2 = Flight.create! number: 84, origin: 'Brisbane', destination: 'Adelaide', date: 2021_06_30, airplane_id: airplane2.id
flight3 = Flight.create! number: 45, origin: 'Melbourne', destination: 'Tasmania', date: 2022_01_15, airplane_id: airplane3.id
flight4 = Flight.create! number: 27, origin: 'Tasmania', destination: 'Sydney', date: 2021_09_25, airplane_id: airplane4.id

puts "created #{Flight.count} flights."

print "Creating reservations... "

Reservation.destroy_all

reservation1 = Reservation.create! row: '1', column: 'A', user_id: user1.id, flight_id: flight1.id
reservation2 = Reservation.create! row: '2', column: 'B', user_id: user2.id, flight_id: flight2.id
reservation3 = Reservation.create! row: '3', column: 'C', user_id: user3.id, flight_id: flight3.id
reservation4 = Reservation.create! row: '4', column: 'D', user_id: user4.id, flight_id: flight4.id


# airplane1.flights << flight1
# airplane2.flights << flight2
# airplane3.flights << flight3
# airplane4.flights << flight4

puts "Testing airplanes -< flights associations:"
puts "The flight #{Flight.first.number} belongs to the airplane #{Airplane.first.name}"






# flight1.users << user1
# flight2.users << user2
# flight3.users << user3
# flight4.users << user4




# reservation1.users << user1
# reservation2.users << user2
# reservation3.users << user3
# reservation4.users << user4
