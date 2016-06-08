class Review < ActiveRecord::Base
  belongs_to :bar

  validates :username, presence: true
  validates :body, presence: true
end
