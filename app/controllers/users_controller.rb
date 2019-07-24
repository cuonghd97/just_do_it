class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Create user success"
      redirect_to user_url
    else
      flash[:error] = "Error"
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:username, :password, :email, :fullname, :password_confirmation)
    end
end
