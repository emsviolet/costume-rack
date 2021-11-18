class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
  end

  private

  def costume_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :user_id, :costume_id, :status, :message)
  end
end
