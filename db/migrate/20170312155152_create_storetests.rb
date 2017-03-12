class CreateStoretests < ActiveRecord::Migration
  def change
    create_table :storetests do |t|
      t.string :name
      t.string :phone

      t.timestamps null: false
    end
  end
end
