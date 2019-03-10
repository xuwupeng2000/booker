class Admin::ShopsController < ApplicationController
  def index
    @shops = Shop.all
      .order(updated_at: :desc)
  end

  def show
    @shop = Shop.find(params[:id])
  end
end
