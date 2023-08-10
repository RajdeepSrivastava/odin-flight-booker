class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:selected_flight_id])
    @departure_airport_id = params[:departure_airport_id]
    @arrival_airport_id = params[:arrival_airport_id]
    @flight_date = params[:flight_date]
    @passenger_count = params[:passenger_count].to_i

    @booking = Booking.new
  end

  def create
    @booking = Booking.new(
      flight_id: params[:booking][:flight_id],
      passenger_count: params[:booking][:passenger_count]
    )

    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  private 
  
  
  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_count, passengers_attributes: [:name, :email])
  end
end
