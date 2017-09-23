class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :check_session
  helper_method :current_user
  helper_method :current_tenant

  def check_session
  	redirect_to log_in_path unless current_user
  end

private
def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
def current_tenant
  @current_tenant ||= Tenant.find(session[:tenant_id]) if session[:tenant_id]
end
end
