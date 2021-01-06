class AirplanesController < ApplicationController

  skip_before_action :verify_authenticity_token, raise: false

  def create
    airplane = Airplane.create airplane_params
    render json: airplane
  end

  def index
    render json: Airplane.all
  end

  private


  def airplane_params

    params.require(:airplane).permit(:name, :rows, :columns)

  end

end
