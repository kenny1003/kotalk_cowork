class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      
      t.string :name
      t.string :marker
      t.string :title
      t.string :structure
      t.integer :period
      t.integer :payment
      t.integer :fee
      t.integer :deposit
      t.string :phone_num
      
      t.timestamps null: false
    end
  end
end
