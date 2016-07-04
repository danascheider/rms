class User::SessionsController < Devise::SessionsController
  skip_before_action :authenticate_user!, only: [:new, :create]
# before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    redirect_to user_google_oauth2_omniauth_authorize
  end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected

  def authenticate_user!
    redirect_to user_google_oauth2_omniauth_authorize unless user_signed_in?
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
