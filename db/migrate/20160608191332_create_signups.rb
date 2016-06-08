class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.belongs_to :bar, null: false
      t.belongs_to :pubcrawl, null: false
    end
  end
end
