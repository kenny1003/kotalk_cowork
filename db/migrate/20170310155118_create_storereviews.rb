class CreateStorereviews < ActiveRecord::Migration
  def change
    create_table :storereviews do |t|
      t.string :review #리뷰내용
      t.float :star #별점

      t.timestamps null: false
    end
  end
end
