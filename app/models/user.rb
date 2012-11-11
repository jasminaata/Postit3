class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :name, :password, :password_confirmation

  validates :name, uniqueness: { case_sensitive: false}, presence: true
  validates :password, presence: true, confirmation: { :unless => Proc.new { |a| a.password.blank? } }

  has_many :posts
  has_many :comments
  has_many :votes
end
