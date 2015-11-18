class SessionsController < ApplicationController
  def new
  end

  def show


  end

  def create
  	@admin= Admin.find_by(email: params[:session][:email])

  	if @admin 
  		# log_in admins_index
  		redirect_to '/admins/index'
  	else 
  		flash[:alert] = " Please try again"
  	redirect_to '/login'
  	end
  end


  def destroy
  	session[:admin_id] = nil
   redirect_to '/' ,flash[:notice] ="Logged out"
  end


end
