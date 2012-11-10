class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :name, :password, :password_confirmation

  validates :name, uniqueness: true, presence: true
  validates :password, presence: true, confirmation: true
  validates :password_confirmation, presence: true

  has_many :posts
  has_many :comments
  has_many :votes
end
