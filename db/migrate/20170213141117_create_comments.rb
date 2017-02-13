class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      
      t.integer :board_id
      t.text :content
      t.string :nickname
      t.string :password

      t.timestamps null: false
    end
  end
end
