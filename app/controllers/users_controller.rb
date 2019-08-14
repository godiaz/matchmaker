class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to thanks_path
      flash.alert = "User successfully created"
    else
      flash.alert = "Error"
      render :new
    end
  end

  private

  def user_params
    userParams = params.require(:user).permit(:email_address)
  end

end
