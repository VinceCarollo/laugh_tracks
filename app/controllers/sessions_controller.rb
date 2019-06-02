class SessionsController < ApplicationController
  def new
    if session[:user_id]
      flash.notice = "You are already logged in"
      redirect_to comedians_path
    end
  end

  def login
    user = User.find_by(user_name: params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash.notice = "You are now logged in"
      redirect_to comedians_path
    else
      flash.notice = "Invalid Username/Password Combination"
      render :new
    end
  end

  def logout
    if session[:user_id]
      reset_session
      flash.notice = "Successfully Logged Out"
      redirect_to comedians_path
    else
      redirect_to comedians_path
    end
  end

end
