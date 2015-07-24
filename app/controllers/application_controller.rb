class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |params| params.permit(:username, :name, :email) }
    devise_parameter_sanitizer.for(:sign_up) { |params| params.permit(:username, :name, :email, :password, :avatar )}
    devise_parameter_sanitizer.for(:account_update) { |params| params.permit(:username, :name, :email, :current_password) }
  end

end
