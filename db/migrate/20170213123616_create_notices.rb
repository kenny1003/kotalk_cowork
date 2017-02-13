class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
t.string :url
t.string :title
t.string :post_time
      t.timestamps null: false
    end
  end
end
