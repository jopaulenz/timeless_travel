class TimeTravelController < ApplicationController
  def index
    @time_travels = TimeTravel.all
  end

  def show
    @time_travel = TimeTravel.find(params[:id])
  end
end

# app/controllers/booking_controller.rb
class BookingController < ApplicationController
  def select_dates
    @time_travel = TimeTravel.find(params[:id])
  end
end
