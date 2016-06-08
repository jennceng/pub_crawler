class Review < ActiveRecord::Base

  validates :bar, presence: true
  validates :username, presence: true
  validates :body, presence: true
end
