# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include Authentication
  helper :all # include all helpers, all the time
  before_filter :login_required
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def check_credentials
    unless current_user.is_admin?
      redirect_to root_url
    end
  end
end
