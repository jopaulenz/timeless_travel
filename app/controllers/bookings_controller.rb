class BookingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]
  before_action :set_time_travel, only: [:new, :create]
  before_action :set_booking, only: [:show, :destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.time_travel = @time_travel
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking was successfully created.'
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
