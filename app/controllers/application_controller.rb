class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    path = user_signed_in? ? root_path : new_user_session_path
    redirect_to path, alert: exception.message
  end
end
