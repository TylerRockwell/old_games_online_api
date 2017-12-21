class Api::V1::Users::RegistrationsController < DeviseTokenAuth::RegistrationsController
  before_action :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up,
      keys: %i(email password password_confirmation agreed_to_terms first_name last_name)
    )
    devise_parameter_sanitizer.permit(:account_update, keys: update_keys)
  end

  private

  def update_keys
    %i(first_name last_name email)
  end
end
