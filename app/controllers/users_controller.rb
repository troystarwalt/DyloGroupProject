class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
   user_set
  end

  def edit
   user_set
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
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_path }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    user_set
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_path, status: 303 }

    end
  end

  private

  def user_set
    
     @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :pnum, :content)
  end

end

