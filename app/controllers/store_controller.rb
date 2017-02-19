class StoreController < ApplicationController
  def store_index
    @store = Store.all


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
