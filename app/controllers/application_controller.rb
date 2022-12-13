class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?
before_action :set_locale


private 

def default_url_options

  { locale: I18n.locale }

end 

  def set_locale
    locale = params[:locale].to_s.strip.to_sym
    I18n.locale = I18n.available_locales.include?(locale) ?
    locale : 
    I18n.default_locale
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
  end
end
