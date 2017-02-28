class BookController < ApplicationController
  def book
  end
  
  
    def book_search
      
require 'rss'
require 'open-uri'
@title=params[:title]
number=1
puts "#{@title}"
puts "#{@title.to_str}"
url = "http://dasan.kut.ac.kr/API/Search?q=ALL%3A"+@title+ "&page=#{number}&pageSize=10&s=NEW"
open(url) do |rss|
  feed = RSS::Parser.parse(rss)
  puts "Title: #{feed.channel.title}"
  feed.items.each do |item|
    puts "Item: #{item.title}"
    
  end
end
    end
end
