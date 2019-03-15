class WelcomeController < ApplicationController
  layout "navless"

  def show
    @user = User.new
  end
end
