class ReservationsController < ApplicationController

  def create

    reservation = Reservation.create content: params[:content]
    render json: reservation

  end

  def new

    render json: Reservation.new

  end

end
