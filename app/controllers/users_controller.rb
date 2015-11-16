class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
     @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create 
    if @user.save
        redirect_to @user
      else
        render :new


  end

  def update
     

    end
  end
end
