class ShopsController < ApplicationController
  # Landing page
  def show
    @shop = Shop.find(params[:id])
  end

end
