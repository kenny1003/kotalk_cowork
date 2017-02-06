class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :category
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
