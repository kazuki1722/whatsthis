class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  
  http_basic_authenticate_with name: ENV['BASIC_AUTH_USER'], password: ENV['BASIC_AUTH_PASSWORD'] if Rails.env.production?
  

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
