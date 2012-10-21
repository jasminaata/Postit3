class Vote < ActiveRecord::Base
  attr_accessible :post_id, :vote, :user_id

  belongs_to :post
  belongs_to :user
end
