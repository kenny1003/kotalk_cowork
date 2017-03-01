class BookController < ApplicationController
  def book
  end
  
  
    def book_search
require 'cgi'      
require 'rss'
require 'open-uri'

title=params[:title]
title= CGI.escape(title)

number=1
url ="http://dasan.kut.ac.kr/API/Search?sid=1&q=ALL%3A#{title}&mf=true&qt=ALL%3A#{title}&f=&br=01&cl=1+2+47+48+49+52+53+54+55+4+5+7+8+10+12+13+46+23+32+35+38+41+45+21+22+17+20+50+44&gr=1+8+2+3+6+5+4+9+7&rl=&pageSize=10&s=NEW&st=DESC&h=&cr=&py=&subj=&facet=Y&nd=&vid=0&tabID=&item=ALL&value=#{title}&x=14&y=20&page=#{number}"
open(url) do |rss|
  feed = RSS::Parser.parse(rss)
  puts "Title: #{feed.channel.title}"
  puts "#{url}"
  Book.delete_all
  @title_str=feed.channel.title
  #@item_title=Array.new
  #@item_link=Array.new
  #@item_description=Array.new
     # k=0
  feed.items.each do |item|
    search_book=Book.new
    search_book.title=item.title
    search_book.link=item.link
    search_book.description=item.description
    search_book.save
     #@item_title.push(item.title)
     #@item_link.push(item.link)
     #@item_description.push(item.description)
     #puts"Item_title : #{@item_title[k]}"
     #puts"Item_link : #{@item_link[k]}"
     #puts"Item_description : #{@item_description[k]}"
     #k=k+1
  end
end
@search=Book.all
    end
end
