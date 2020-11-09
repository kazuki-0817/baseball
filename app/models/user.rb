class User < ApplicationRecord

  has_many :articles,dependent: :destroy

  belongs_to :team,class_name: "Team",foreign_key: "team_id"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image

  validates :username, presence: true
end
