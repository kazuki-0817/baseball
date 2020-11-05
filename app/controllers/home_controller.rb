class HomeController < ApplicationController
    def index
        @articles=Article.all.limit(4).order(created_at: :desc)
    end

    def bad_request
        raise ActionController::ParameterMissing,""
    end

    def forbidden
    raise Forbidden,""
    end

    def internal_server_error
    raise
    end

end
