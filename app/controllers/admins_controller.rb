class AdminsController < ApplicationController
  def index
  	@admins = User.all
  end

  def show
  	@admin = User.find(params[:id])
  end

  def destroy
  	@user = User.find(params[:id])
  	@user = User.destroy
  end

end
