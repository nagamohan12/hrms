class UsersController < ApplicationController
  def new
    @user = User.new
    @user.build_user_detail
  end

  def create
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :user_name, :user_detail_attributes )
  end
end
