class FlightsController < ApplicationController
  def index
    # @flight = Flight.all
    @airports = Airport.all

      departure_airport_id = params[:departure_airport_id]
      arrival_airport_id = params[:arrival_airport_id]
      flight_date = params[:flight_date]
      passenger_count = params[:passenger_count].to_i

   
    @available_flights = Flight.where(
      departure_airport_id: departure_airport_id,
      arrival_airport_id: arrival_airport_id,
      start_datetime: flight_date
    )

    render :index

  end

 end
