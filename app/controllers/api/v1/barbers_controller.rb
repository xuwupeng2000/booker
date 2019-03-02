class Api::V1::BarbersController < ApplicationController
  def index
    render json: BarberSerializer.new(Barber.all).serializable_hash
  end

  def show
    barber = Barber.find(params[:id])
    render json: BarberSerializer.new(barber).serializable_hash
  end
end
