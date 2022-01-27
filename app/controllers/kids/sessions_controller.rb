# frozen_string_literal: true

class Kids::SessionsController < Devise::SessionsController
  before_action :reject_inactive_kid, only: [:create]
  # before_action :configure_sign_in_params, only: [:create]

  def reject_inactive_kid
    @kid = Kid.find_by(email: params[:kid][:email])
    if @kid.valid_password?(params[:kid][:passward]) && @kid.is_deleted
      redirect_to new_kid_session_path
    end
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected
  # def after_sign_in_path_for(resource)
  #   kids_path
  # end
  
  # def after_sign_out_path_for(resource)
  #   root_path
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
