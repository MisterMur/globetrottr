class SessionsController < ApplicationController
skip_before_action :authorized, only: [:new, :create]

  def new
    # byebug
  end

  def create
    # byebug
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:notice] = 'Invalid username or password'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Securely Logged Out'
    redirect_to login_path
  end

end
