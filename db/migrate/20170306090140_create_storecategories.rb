class CreateStorecategories < ActiveRecord::Migration
  def change
    create_table :storecategories do |t|

      t.string :category

      t.timestamps null: false
    end
  end
end
