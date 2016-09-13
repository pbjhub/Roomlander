class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:land, :search]
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || landing_search_path
  end

  require 'carrierwave/orm/activerecord'

  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end

  def redirect_back_or(path)
    redirect_to request.referer || path
  end
  
end
