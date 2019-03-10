class Admin::ShopsController < ApplicationController
  layout 'admin'
  def index
    @shops = Shop.all
      .order(updated_at: :desc)
  end

  def show
    @shop = Shop.find(params[:id])
  end
end
