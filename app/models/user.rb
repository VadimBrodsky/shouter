class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :shouts
  has_many :following_relationships
  has_many :followed_users, through: :following_relationships
end
