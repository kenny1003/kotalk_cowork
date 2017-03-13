class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      
      t.string :url
      t.string :title
      t.string :post_time
      t.string :writer
      t.integer:post_num
      t.timestamps null: false
    end
  end
end
