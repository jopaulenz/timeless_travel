class TimeTravelsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @time_travels = TimeTravels.all
  end

  def show
    @time_travel = TimeTravels.find(params[:id])
  end
end
