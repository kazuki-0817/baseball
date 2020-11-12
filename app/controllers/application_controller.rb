class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    private
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up,keys: [:username, :team_id])
    end
    class LoginRequired < StandardError; end
    class Forbidden < StandardError; end

    if Rails.env.production? || ENV["RESCUE_EXCEPTIONS"]

        rescue_from StandardError, with: :rescue_internal_server_error
        rescue_from ActiveRecord::RecordNotFound, with: :rescue_not_found
        rescue_from ActionController::ParameterMissing, with: :rescue_bad_request

        
    end
    
    rescue_from LoginRequired, with: :rescue_login_required
    rescue_from Forbidden, with: :rescue_forbidden

    private def login_required
        raise LoginRequired unless current_user
    end

    private def rescue_bad_request(exception)
        render "errors/bad_request",status: 400, layout: "error",
            formats:[:html]
    end

    private def rescue_login_required(exception)
        render "errors/login_required", status: 403,layout: "error",
            formats: [:html]
    end
    
    private def rescue_forbidden(exception)
        render "errors/forbidden",status: 403,layout: "error",
            formats:[:html]
    end

    private def rescue_not_found(exception)
        render "errors/not_found",status: 404,layout: "error",
            formats: [:html]
    end

    private def rescue_internal_server_error(exception)
        render "errors/internal_server_error",status: 500, layout: "error",
            formats: [:html]
    end
end