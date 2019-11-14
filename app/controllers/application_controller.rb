class ApplicationController < ActionController::Base
  before_action :authorized, except: [:index]
  helper_method :current_user, :logged_in?, :current_path

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

  def index
    render :'applications/index'
  end

  def current_path
    request.env['PATH_INFO']
  end

end #end of ApplicationController
