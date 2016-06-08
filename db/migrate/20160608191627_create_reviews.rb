class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :username, null: false
      t.string :body, null: false
      t.belongs_to :bar, null: false 
    end
  end
end
