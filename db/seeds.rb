# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



airport_code1 = Airport.create(code: "abc")
airport_code2 = Airport.create(code: "def")
airport_code3 = Airport.create(code: "ghi")
airport_code4 = Airport.create(code: "jkl")


Flight.create(
    departure_airport_id: airport_code1,
    arrival_airport_id: airport_code2,
    start_datetime: Date.today,
    flight_duration: 6 
)
Flight.create(
    departure_airport_id: airport_code2,
    arrival_airport_id: airport_code3,
    start_datetime: Date.today,
    flight_duration: 3 
)
Flight.create(
    departure_airport_id: airport_code3,
    arrival_airport_id: airport_code4,
    start_datetime: Date.today,
    flight_duration: 5 
)


