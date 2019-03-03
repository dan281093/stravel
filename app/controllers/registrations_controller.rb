class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    new_user_activity_path
  end

   def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:birth_date, :photo, :description, :first_name, :last_name])
  end
end
