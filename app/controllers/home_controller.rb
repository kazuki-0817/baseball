class HomeController < ApplicationController
    def index
        @articles=Article.all.limit(4).order(created_at: :desc) #最近の記事4つを表示
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
