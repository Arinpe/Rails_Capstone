class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, length: { minimum: 3 }
  validates :email, presence: true, length: { minimum: 10 }
  validates :password, presence: true

  has_many :opinions, foreign_key: 'author_id'

  has_many :super_followers, foreign_key: :follower_id, class_name: 'Following'
  has_many :followed_users, through: :super_followers, source: :followed

  has_many :following_users, foreign_key: :followed_id, class_name: 'Following'
  has_many :followers, through: :following_users, source: :follower
  has_one_attached :image

  scope :most_recent, -> { order(created_at: :desc) }
end
