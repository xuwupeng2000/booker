class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    render json: {
      errors: [
        {
          status: '400',
          title: 'Bad Request',
          detail: resource.errors,
          code: '100'
        }
      ]
    }, status: :bad_request
  end

  private

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end
end
