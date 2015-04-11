class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate_user!

  def require_admin
    unless current_user.is_superuser
      flash[:error] = 'Only admin has access to this page.'
      redirect_to :root
    end
  end

  def require_normal_user
    if current_user.is_superuser
      flash[:error] = 'Only normal users have access to this page.'
      redirect_to :root
    end
  end
end
