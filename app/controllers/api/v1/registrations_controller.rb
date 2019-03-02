class Api::V1::RegistrationsController < Devise::RegistrationsController

  # POST /resource
  def create
    build_resource(sign_up_params)

    if resource.save
      sign_up(resource_name, resource)
      render json: UserSerializer.new(resource).serializable_hash
    else
      render json: { error: resource.errors.full_messages }
    end
  end
end
