# frozen_string_literal: true

class Api::V1::SessionsController < Devise::SessionsController
  skip_before_action :verify_signed_out_user

  # POST /resource/sign_in
  def create
    @user = warden.authenticate(auth_options)
    if @user
      sign_in(resource_name, @user)
      render json: UserSerializer.new(@user).serializable_hash
    else
      head 401
    end
  end

  # DELETE /resource/sign_out
  def destroy
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    head 200
  end

  private

  def sign_in_params
    params.require(:user).permit!
  end
end
