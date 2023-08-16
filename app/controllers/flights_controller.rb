class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all

    @available_dates = Flight.pluck(:start_datetime).map { |datetime| datetime.to_date }.uniq

      departure_airport_id = params[:departure_airport_id]
      arrival_airport_id = params[:arrival_airport_id]
      flight_date = params[:flight_date]
      passenger_count = params[:passenger_count].to_i

  @passenger_count = params[:passenger_count].to_i
# debugger
      # puts "departure_airport_id: #{departure_airport_id}"
      # puts "arrival_airport_id: #{arrival_airport_id}"
      # puts "flight_date: #{flight_date}"
      # puts "@available_flights: #{@available_flights.inspect}"

    # @available_flights = Flight.where(
    #   departure_airport_id: departure_airport_id,
    #   arrival_airport_id: arrival_airport_id,
    #   start_datetime: flight_date
    # )

    @flights = @flights.where(departure_airport_id: departure_airport_id) if departure_airport_id.present?
    @flights = @flights.where(arrival_airport_id: arrival_airport_id) if arrival_airport_id.present?
    @flights = @flights.where(start_datetime: flight_date) if flight_date.present?

    render :index
    

  end

 end
