class Article < ApplicationRecord
    
    belongs_to :author, class_name: "User",foreign_key: "user_id"

    belongs_to :team, class_name: "Team",foreign_key: "team_id"
    validates :title,presence: true,length: {maximum: 32} #記事タイトル 空白禁止,32文字以内
    validates :body,presence: true,length: {maximum:200} #記事本文 空白禁止,200文字以内
    validates :videoid, :team_id, presence: true #記事チーム空白禁止
    
end
