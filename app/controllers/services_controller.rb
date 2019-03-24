class ServicesController < ApplicationController
  before_action :set_shop

  def index
    @services = @shop.services
      .order(updated_at: :desc)
  end

  def update
    @service = @shop.services.find(params[:id])

    if @service.update(booking_params)
      redirect_to admin_bookings_path, success: t("service.update.success")
    else
      render :edit
    end
  end

  def create
    @service = @shop.services.build(booking_params)

    if @service.save
      redirect_to admin_bookings_path, success: t("service.create.success")
    else
      render :new
    end
  end

  def edit
    @service = @shop.services.find(params[:id])
  end

  def show
    @service = @shop.services.find(params[:id])
  end

  def new
    @service = @shop.services.build
  end

  def destroy
    @service = @shop.services.find(params[:id])
    @service.destroy!
  end

  private

  def booking_params
    params.require(:service).permit!
  end
end
