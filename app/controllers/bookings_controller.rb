class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:selected_flight_id])
    @departure_airport_id = params[:departure_airport_id]
    @arrival_airport_id = params[:arrival_airport_id]
    @flight_date = params[:flight_date]
    @passenger_count = params[:passenger_count].to_i

    @booking = Booking.new
# debugger
    @passenger_count.times { @booking.passengers.build }
    puts "Flight: #{@flight}"
    puts "Departure Airport ID: #{@departure_airport_id}"
    puts "Arrival Airport ID: #{@arrival_airport_id}"
    puts "Flight Date: #{@flight_date}"
    puts "Passenger Count: #{@passenger_count}"
  end

  def show
    @booking = Booking.find(params[:id])
    # render :show
  end
  
  def create
    @booking = Booking.new(booking_params)
    #   flight_id: params[:booking][:flight_id],
    #   passenger_count: params[:booking][:passenger_count]
    # )
# debugger
    if @booking.save
      @booking.passengers.each(&:save)
      @booking.passengers.create(name: params[:booking][:passenger][:name], email: params[:booking][:passenger][:email])

      redirect_to booking_path(@booking)
        
    else
      render :new
    end
  end

  private 
  
  
  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_count, passengers_attributes: [:name, :email])
  end
end
