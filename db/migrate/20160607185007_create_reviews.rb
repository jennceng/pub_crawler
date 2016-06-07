class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :bar, null: false
      t.string :username, null: false
      t.text :body, null: false
    end
  end
end