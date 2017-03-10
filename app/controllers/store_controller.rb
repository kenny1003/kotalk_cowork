class StoreController < ApplicationController
  def store_index
    @store = Store.all
    @category = Storecategory.all
  end

  def store_find
    @store = Store.all
    @category = Storecategory.all


    #사용자가 입력한 검색어를 db에서 검색한다.
    @search = Store.where('name LIKE ?', "%#{params[:search]}%")

  end

  def store_show
    #주변상점 상세페이지를 출력
    @store = Store.all
    @category = Storecategory.all

    @store_find = Store.find(params[:s_id])
  end


  def store_category
    #카테고리 버튼을 누를 때 해당되는 카테고리가 출력된다.
    @store = Store.all
    @category = Storecategory.all

    @category_find = Storecategory.find(params[:s_id])
    @show_category = Store.where({category: @category_find.category})
  end





  def store_crawling
    require 'nokogiri'
    require 'open-uri'


    counter = 0

    #while counter < 5 do

    #  doc = Nokogiri::HTML(open("https://hantalk.kr:49654/shop/view?no=#{counter}"))
    #  sleep 2
    #  @name=doc.css('div#shop-view')
    #  @store = Store.new
    #  @store.name = @name
    #  @store.save
    #  counter = counter+1
    #end

    doc = Nokogiri::HTML(open("https://hantalk.kr:49654/shop/view?no=99"))
    sleep 5
    @name=doc.css('h1')
    @store = Store.new
    @store.name = @name
    @store.save
  end








end
