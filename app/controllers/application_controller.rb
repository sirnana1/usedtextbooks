#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#

class ApplicationController < ActionController::Base
protect_from_forgery with: :exception
#checks if a user have permmision to continue.
before_action :authenticate_user!

before_action :configure_permitted_parameters, if: :devise_controller?

#these are the permit parameters for devise to prevent Hackers getting
#into user system in the inputs fields.
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

end
