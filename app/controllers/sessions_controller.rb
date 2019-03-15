# frozen_string_literal: true

class SessionsController < Devise::SessionsController
  skip_before_action :verify_signed_out_user

  def new
    self.resource = resource_class.new()
    clean_up_passwords(resource)
    respond_with(resource, serialize_options(resource))
  end

  # POST /resource/sign_in
  def create
    @user = warden.authenticate(auth_options)
    if @user
      sign_in(resource_name, @user)
      redirect_to shops_path
    else
      flash[:error] = "Please check you email and password"
      redirect_to root_path
    end
  end

  # DELETE /resource/sign_out
  def destroy
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))

    redirect_to root_path, notice: "Signed out"
  end

  private

  def sign_in_params
    params.require(:user).permit!
  end
end
