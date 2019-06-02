class UsersController < ApplicationController
  def new
    if session[:user_id]
      flash.notice = "You must logout to create new user"
      redirect_to comedians_path
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.notice = "You are now registered"
      session[:user_id] = @user.id
      redirect_to comedians_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :password)
  end
end
