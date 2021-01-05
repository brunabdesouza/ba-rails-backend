class ReservationsController < ApplicationController

  def create

    reservation = Reservation.create reservation_params
    render json: reservation

  end

  def new

    render json: Reservation.new

  end





  private


  def reservation_params

    params.require(:reservation).permit(:row, :column)


  end

end
