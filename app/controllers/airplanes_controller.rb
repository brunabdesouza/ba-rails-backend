class AirplanesController < ApplicationController

  def create

    headers['Access-Control-Allow-Origin'] = '*'

    airplane = Airplane.create airplane_params
    render json: airplane

  end

  def show

    headers['Access-Control-Allow-Origin'] = '*'

    render json: Airplane.all

  end





  private


  def airplane_params

    params.require(:airplane).permit(:name, :row, :column)

  end

end
