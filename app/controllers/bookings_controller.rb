class BookingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy] 
  before_action :set_time_travel, only: [:new, :create]
  before_action :set_booking, only: [:show, :destroy]

  def new
    @booking = @time_travel.bookings.new
  end

  def create
    @booking = @time_travel.bookings.new(booking_params)
    if @booking.save
      redirect_to time_travel_booking_path(@time_travel, @booking), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking.destroy
    redirect_to time_travels_path, notice: 'Booking was successfully deleted.'
  end

  private
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_time_travel
    @time_travel = TimeTravel.find(params[:time_travel_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_name)
  end
end
