class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :shouts
  # Override the foreign key from user_id to match the table, with follower_id
  has_many :following_relationships, foreign_key: :follower_id
  has_many :followed_users, through: :following_relationships
end
