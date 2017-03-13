class BookController < ApplicationController
  def book
  end
  def book_db_drop
      Book.delete_all
  end
    def book_search
require 'cgi'      
require 'rss'
require 'open-uri'

title=params[:title]
title= CGI.escape(title)
# korean lang => encoding

number=params[:hidden_number]
# hidden type value loading
url ="http://dasan.kut.ac.kr/API/Search?sid=1&q=ALL%3A#{title}&mf=true&qt=ALL%3A#{title}&f=&br=01&cl=1+2+47+48+49+52+53+54+55+4+5+7+8+10+12+13+46+23+32+35+38+41+45+21+22+17+20+50+44&gr=1+8+2+3+6+5+4+9+7&rl=&pageSize=10&s=NEW&st=DESC&h=&cr=&py=&subj=&facet=Y&nd=&vid=0&tabID=&item=ALL&value=#{title}&x=14&y=20&page=#{number}"
# dasan Rss URL
puts "#{url}"
open(url) do |rss|
  feed = RSS::Parser.parse(rss)
  puts "Title: #{feed.channel.title}"
  puts "#{url}"
  
  book_db_drop
  # book_db_drop
  # for loading new data
  @title_str=feed.channel.title

  feed.items.each do |item|
    search_book=Book.new
    # book database 
    search_book.title=item.title
    search_book.link=item.link
    search_book.description=item.pubDate
    #후에 db 수정예정
    #description 뒤에 <br> 글자가 삽입되어있음
    #위와 같은 이유로  pubDate로 수정
    # rss 자체 오류
    search_book.save
    
  end
end
@search=Book.all
    end
end
