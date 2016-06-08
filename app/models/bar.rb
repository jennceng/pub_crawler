class Bar < ActiveRecord::Base
  has_many :reviews
  has_many :signups
  has_many :pubcrawls, through: :signups
end
