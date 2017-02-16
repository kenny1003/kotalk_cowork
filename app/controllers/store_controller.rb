class StoreController < ApplicationController
  def store_index
    @store = Store.all


  end
end
