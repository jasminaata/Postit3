class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :name, :password

  validates_uniqueness_of :name
  validates_presence_of :name, :password

  has_many :posts
  has_many :comments
  has_many :votes
end
