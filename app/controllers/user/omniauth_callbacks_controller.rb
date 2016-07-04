class User::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  # You should also create an action method in this controller like this:
  def google_oauth2
    @user = ::User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication
      set_flash_message(:notice, :success, :kind => "Google") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to root_path
    end
  end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  def passthru
    redirect_to @user
  end

  # GET|POST /users/auth/twitter/callback
  def failure
    redirect_to root_path
  end

  protected

  def sign_in_and_redirect(user)
    redirect_to user
  end

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
