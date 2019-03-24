class ShopsController < ApplicationController
  before_action :authenticate_user!, :set_shop_scope

  def show
    @shop = @shop_scope.find(params[:id])
  end

  def index
    @shops = @shop_scope
  end

  def new
    @shop = current_user.shops.build
  end

  def create

  end

  private

  def set_shop_scope
    @shop_scope = current_user.admin? ? Shop : current_user.shops
  end
end
