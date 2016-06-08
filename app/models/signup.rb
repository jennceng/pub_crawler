class Signup < ActiveRecord::Base

  validates :pubcrawl, presence: true 
  validates :bar, presence: true
end
