class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_sign_up_params, only: [:create], if: :devise_controller?
  before_action :configure_account_update_params, only: [:update], if: :devise_controller?
  # before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:email])
  end
end
