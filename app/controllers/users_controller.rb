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
    @user = User.new(user_params)
    if @user.save
      redirect_to '/', notice: "We will get to you shortly"
    else
      render :new
    end
  end

  def update


  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :pnum, :content)
  end

end

