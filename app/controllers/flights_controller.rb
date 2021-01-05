class FlightsController < ApplicationController

  def new
    # Do we need this for a react frontend
  end

  def create
    flight = Flight.create flight_params
  end

  def index
    response = Flight.all

    render json: response
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def flight_params
    params.require(:flight).permit(:number, :origin, :destination, :date, :plane, :airplane_id)
  end

end
