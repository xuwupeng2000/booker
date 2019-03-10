class BarbersController < ApplicationController
  before_action :set_shop

  def index
    @barbers = @shop.barbers.includes(:shop).all
      .order(updated_at: :desc)
  end

  def update
    @barber = @shop.barbers.find(params[:id])

    if @barber.update(barber_params)
      redirect_to admin_barbers_path, success: t("barber.update.success")
    else
      render :edit
    end
  end

  def create
    @barber = @shop.barbers.build(barber_params)

    if @barber.save
      redirect_to admin_barbers_path, success: t("barber.create.success")
    else
      render :new
    end
  end

  def edit
    @barber = @shop.barbers.find(params[:id])
  end

  def show
    @barber = @shop.barbers.find(params[:id])
  end

  def new
    @barber = @shop.barbers.build
  end

  def destroy
    @barber = @shop.barbers.find(params[:id])
    @barber.destroy!
  end

  private

  def barber_params
    params.require(:barber).permit!
  end
end
