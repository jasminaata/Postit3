class Post < ActiveRecord::Base
  attr_accessible :title, :url, :user_id, :category_id

  validates_presence_of :title, :url

  belongs_to :category
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy

  def total_votes
    self.votes.where(vote: true).size - self.votes.where(vote: false).size
  end
end
