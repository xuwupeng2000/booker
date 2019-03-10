class Admin::BarbersController < ApplicationController
  def index
    @barbers = Barber.includes(:shop).all
      .order(updated_at: :desc)
  end

  def update
    @barber = Barber.find(params[:id])

    if @barber.update(barber_params)
      redirect_to admin_barbers_path, success: t("barber.update.success")
    else
      render :edit
    end
  end

  def create
    @barber = Barber.new(barber_params)

    if @barber.save
      redirect_to admin_barbers_path, success: t("barber.create.success")
    else
      render :new
    end
  end

  def edit
    @barber = Barber.find(params[:id])
  end

  def show
    @barber = Barber.find(params[:id])
  end

  def new
    @barber = Barber.new
  end

  def destroy
    @barber = Barber.find(params[:id])
    @barber.destroy!
  end

  private

  def barber_params
    params.require(:barber).permit!
  end
end
