class Api::V1::BookingsController < ApplicationController
  def index
    render json: BookingSerializer.new(Booking.all).serializable_hash
  end

  def show
    booking = Booking.find(params[:id])
    render json: BookingSerializer.new(booking).serializable_hash
  end

  def update
    render json: {}, status: 204
  end

  def create
    render json: {}, status: 204
  end
end
