class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.belongs_to :pubcrawl
      t.belongs_to :bar
    end
  end
end
