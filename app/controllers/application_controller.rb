class ApplicationController < ActionController::Base
  protect_from_forgery

  include SessionsHelper

  before_filter :authorize

  private

  def authorize
    redirect_to login_url, alert: "Not authorized" unless logged_in?
  end
end
