class Signup < ActiveRecord::Base
  belongs_to :pubcrawl
  belongs_to :bar
  
  validates :pubcrawl, presence: true
  validates :bar, presence: true
end
