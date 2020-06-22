class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  def authenticate_user
    if current_user == nil
      flash[:notice] = t('notice.login_needed')
      redirect_to new_session_path
    end
  end
  
  rescue_from ActiveRecord::RecordNotFound, with: :render_404
  rescue_from ActionController::RoutingError, with: :render_404
  rescue_from Exception, with: :render_500

  def render_404(exception = nil)
    if exception
      logger.info "Rendering 404 with exception: #{exception.message}"
    end
    render template: "errors/error_404", status: 404, layout: 'application'
  end

  def render_500(exception = nil)
    if exception
      logger.info "Rendering 500 with exception: #{exception.message}"
    end
    render template: "errors/error_500", status: 500, layout: 'application'
  end

end
