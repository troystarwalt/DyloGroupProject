class SessionsController < ApplicationController
  def new
  end

  def create
  	@admin= Admin.find_by(email: params[:email])

  	if @admin 
  		session[:admin_id] = @admin.id
  		# log_in admins_index
  		redirect_to '/admins/index', notice:'your in '
  	else 
  		flash[:alert] = " Please try again"
  	redirect_to '/login'
  	end
  end


  def destroy
  	session[:admin_id] = nil
   redirect_to root_path
  end


end
