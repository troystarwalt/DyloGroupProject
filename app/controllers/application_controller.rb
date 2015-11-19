class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  protected
  	def admin_user
			@admin_user ||= Admin.find(session[:admin_id]) if session[:admin_id]
		end

helper_method :admin_user
  	def authenticate_user!
  		redirect_to login_path unless admin_user
  	end

end


