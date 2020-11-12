class Article < ApplicationRecord

    belongs_to :author, class_name: "User",foreign_key: "user_id"

    belongs_to :team, class_name: "Team",foreign_key: "team_id"
    validates :title,presence: true,length: {maximum: 32}
    validates :body,presence: true,length: {maximum:200}
    validates :videoid, :team_id, presence: true
    
end