class Api::V1::SessionsController < ApplicationController
  def create
    render json: {}, status: 204
  end

  def destroy
    render json: {}, status: 204
  end
end
