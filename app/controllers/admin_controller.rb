class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :super_user_check #일반사용자와 관리자를 구분해서 관리자만 허용한다.



  def super_user_check #관리자를 찾는 코드로 이것은 수정필요, 현재는 1@gmail.com 아이디만 관리자페이지 열람가능
    if current_user.email == '1@gmail.com'

    else
      redirect_to '/'
    end
  end

  def index

  end

  def store
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

  def store_update_view
    @store = Store.find(params[:store_id])
  end

  def store_update
    @store = Store.find(params[:store_id])
    @store.name = params[:store_name]
    @store.phone_number=params[:store_number]
    @store.category=params[:store_category]
    @store.save
    redirect_to '/admin/store'

  end

  def store_destroy
    @store = Store.find(params[:store_id])
    @store.destroy
    redirect_to '/admin/store'

  end


end
