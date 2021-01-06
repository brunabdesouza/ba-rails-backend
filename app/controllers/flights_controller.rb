class FlightsController < ApplicationController

  skip_before_action :verify_authenticity_token, raise: false

  def new
    # Do we need this for a react frontend
  end

  def create
    flight = Flight.create flight_params

    render json: flight
  end

  def index
    response = Flight.all

    render json: response
  end

  def show
    response = Flight.find params[:id]

    render json: response
  end

  def edit
    # Do we need this for a react frontend
  end

  def update
    flight = Flight.find params[:id]
    flight.update flight_params[:id]
  end

  def destroy
    Flight.destroy params[:id]
  end

  private

  def flight_params
    params.require(:flight).permit(:number, :origin, :destination, :date, :plane, :airplane_id)
  end

end
