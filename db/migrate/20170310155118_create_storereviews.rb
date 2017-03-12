class CreateStorereviews < ActiveRecord::Migration
  def change
    create_table :storereviews do |t|
      t.string :review #리뷰내용
      t.integer :star #별점
      t.integer :store_id #각 상점에 연결하기 위한 요소


      t.timestamps null: false
    end
  end
end
