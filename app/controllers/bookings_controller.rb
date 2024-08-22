# app/controllers/booking_controller.rb
class BookingsController < ApplicationController
  def select_dates
    @time_travel = TimeTravels.find(params[:id])
  end
end
