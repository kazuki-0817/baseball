class Article < ApplicationRecord

    belongs_to :author, class_name: "User",foreign_key: "user_id"

    validates :title,presence: true,length: {maximum: 100}
    validates :body ,:videoid, :team_id, presence: true
    
end
