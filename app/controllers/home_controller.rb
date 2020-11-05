class HomeController < ApplicationController
    def index
        @articles=Article.all.limit(4).order(created_at: :desc)
      end
end
