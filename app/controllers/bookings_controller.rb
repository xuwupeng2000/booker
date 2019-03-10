class BookingsController < ApplicationController
  before_action :set_shop

  def index
    @bookings = @shop.bookings
      .order(updated_at: :desc)
  end

  def update
    @booking = @shop.bookings.find(params[:id])

    if @booking.update(booking_params)
      redirect_to admin_bookings_path, success: t("booking.update.success")
    else
      render :edit
    end
  end

  def create
    @booking = @shop.bookings.build(booking_params)

    if @booking.save
      redirect_to admin_bookings_path, success: t("booking.create.success")
    else
      render :new
    end
  end

  def edit
    @booking = @shop.bookings.find(params[:id])
  end

  def show
    @booking = @shop.bookings.find(params[:id])
  end

  def new
    @booking = @shop.bookings.build
  end

  def destroy
    @booking = @shop.bookings.find(params[:id])
    @booking.destroy!
  end

  private

  def booking_params
    params.require(:booking).permit!
  end
end
