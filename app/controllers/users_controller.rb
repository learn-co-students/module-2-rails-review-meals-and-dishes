class UsersController < ApplicationController

  def show
    if User.find_by_id(params[:id])
      @user = User.find(params[:id])
    else
      redirect_to meals_path
    end
  end

  def create

    if params[:user][:password] == params[:user][:password_confirmation]
      @user = User.create(user_params)
      redirect_to @user
    else
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
