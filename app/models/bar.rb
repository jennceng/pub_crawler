class Bar < ActiveRecord::Base
  has_many :signups
  has_many :pubcrawls, through: :signups
  has_many :reviews
end
