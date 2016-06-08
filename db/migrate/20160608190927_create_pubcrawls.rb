class CreatePubcrawls < ActiveRecord::Migration
  def change
    create_table :pubcrawls do |t|
      t.string :name, null: false 
    end
  end
end
