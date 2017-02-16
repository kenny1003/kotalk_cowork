class AddFeildsToStore < ActiveRecord::Migration
  def change
    add_column :stores, :business_hour, :string
  end
end
