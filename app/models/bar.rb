class Bar < ActiveRecord::Base
  has_many :reviews
  has_many :signups
  has_many :pubcrawls, through: :signups

  validates :name, presence: true
  validates :address, presence: true
end
