class BookingsController < ApplicationController
  def new
    @costume = Costume.find(params[:costume_id])
    @booking = Booking.new
  end

  def create
    @costume = Costume.find(params[:costume_id])
    @booking = Booking.new(booking_params)
    @booking.costume = @costume
    @booking.user = current_user

    if @booking.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])

    if params[:status] == "accepted"
      # @booking.update(status: "accepted")
      @booking.accepted!
    elsif params[:status] == "declined"
      # @boooking.update(status: "declined")
      @booking.declined!
    end
    redirect_to dashboard_path, notice: "Successfully updated"
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :user_id, :costume_id, :status, :message)
  end
end
