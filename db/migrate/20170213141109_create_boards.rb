class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.string :title
      t.text :content
      t.integer :hits

      t.timestamps null: false
    end
  end
end
