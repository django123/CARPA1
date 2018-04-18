class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(secure_params)
      redirect_to root_path, :notice => "pas de problème"
    else
      redirect_to root_path, :alert => "something wrong"
    end
  end

  private

  def secure_params
    params.require(:user).permit(:role)
  end
end