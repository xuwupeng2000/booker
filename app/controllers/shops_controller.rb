class ShopsController < ApplicationController
  before_action :authenticate_user!

  def show
    @shop = current_user.shops.find(params[:id])
  end

  def index
    @shops = current_user.shops
  end

  def new
    @shop = current_user.shops.build
  end

  def create

  end
end
