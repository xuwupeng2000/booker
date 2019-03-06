class BookingsController < ApplicationController
  def index
    @bookings = Booking.includes(:shop).all
      .order(updated_at: :desc)
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(booking_params)
      redirect_to bookings_path, success: t("booking.update.success")
    else
      render :edit
    end
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to bookings_path, success: t("booking.create.success")
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy!
  end

  private

  def booking_params
    params.require(:booking).permit!
  end

end
