class AdminController < ApplicationController

  def index

  end

  def store

    #redirect_to '/admin/index'

    @store_all = Store.all



  end

  def store_write
    @store = Store.new
    @store.name = params[:store_name]
    @store.phone_number=params[:store_number]
    @store.category=params[:store_category]
    @store.save
    redirect_to '/admin/store'

  end


end
