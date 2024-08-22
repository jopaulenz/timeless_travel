# app/controllers/booking_controller.rb
class BookingController < ApplicationController
  def select_dates
    @time_travel = TimeTravel.find(params[:id])
  end
end
