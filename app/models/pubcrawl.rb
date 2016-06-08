class Pubcrawl < ActiveRecord::Base
  has_many :signups
  has_many :bars, through: :signups

  validates :name, presence: true
end
