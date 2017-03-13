class StoreController < ApplicationController
  #before_action :store_spreadsheet

  def store_star_rating


  end




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
    sum = 0
    count = 0
    @result = 0
    @store_find.storereview.each do |r|
      sum += r.star
      count += 1.0

    end

    if count == 0
      @result = 0
    else
      @result = ((sum/count)*20.0)
    end


  end


  def store_category
    #카테고리 버튼을 누를 때 해당되는 카테고리가 출력된다.
    @store = Store.all
    @category = Storecategory.all

    @category_find = Storecategory.find(params[:s_id])
    @show_category = Store.where({category: @category_find.category})
  end

  def store_review
    @store_review = Storereview.new
    @store_review.review = params[:review]
    @store_review.star=params[:star]
    @store_review.store_id = params[:store_id]
    @store_review.save
    redirect_to(:back) #현재 페이지로 이동


  end





  #주변상점 크롤러, 테스트용으로 만든 것임. 실제로 사용하지 않음.
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

  def store_spreadsheet
    require 'spreadsheet'

    sheet = Spreadsheet.open('store.xls')
    sheet = sheet.worksheet 0
    1.step(5, 1) do |i|
      row=Array.new
      row += sheet.row(i).compact!

      if !row.empty?
        puts "#{i}번째"


        row.each do |k|
        #  @store_info=Store.new

          if row.index(k)==0
            puts "이름 : #{k}"
           # @store_info.name=k
          elsif row.index(k) == "#{k}"
            puts "폰번호 : #{k}"
           # @store_info.phone=k
          else
            puts "카테고리 : #{k}"
          #  store_info="#{k}"
          end
        #  @store_info.save
        end

      else
        break
      end
    end
    redirect_to :back
  end








end
