class AdminsController < ApplicationController
  def index
  	@admin = User.all
  end

  def show
  	@admin = User.find(params[:id])
  end

  def destroy
  	@user.find(params[:id])
  	@user.destroy
  end
end
