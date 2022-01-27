class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def authenticate_user
    if !(admin_signed_in? || kid_signed_in?)
      redirect_to root_path
    end
  end

  def after_sign_in_path_for(resource)
    if kid_signed_in?
     kids_path
    else
     admin_kids_path
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :admin_id])
  end
end
