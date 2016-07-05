class User::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  skip_before_filter :verify_authenticity_token
  before_filter :handle_authentication

  # You should also create an action method in this controller like this:
  def google_oauth2
  end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  def passthru
    redirect_to @user
  end

  # GET|POST /users/auth/twitter/callback
  def failure
    render nothing: true
  end

  protected

  def sign_in_and_redirect(user)
    redirect_to user
  end

  def handle_authentication
    File.open("omniauth.txt", "w+") {|file| file.puts request.env["omniauth.auth"] }
    @user = User.from_oauth(request.env["omniauth.auth"])
  end

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
