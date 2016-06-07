class Signup < ActiveRecord::Base
  belongs_to :pubcrawl
  belongs_to :bar
end
