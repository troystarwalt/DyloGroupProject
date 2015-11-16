class AdminsController < ApplicationController
  def index
  	@admin = User.all
  end

  def show
  	@admin = User.find(params[:id])
  end

  def destroy
  	@user = User.find(params[:id])
  	@user= User.destroy
  end

  


end
