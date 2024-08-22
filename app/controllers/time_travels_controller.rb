class TimeTravelsController < ApplicationController
  def index
    @time_travels = TimeTravels.all
  end

  def show
    @time_travel = TimeTravels.find(params[:id])
  end
end
